package jp.co.internous.buzz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.internous.buzz.model.domain.MstProduct;
import jp.co.internous.buzz.model.form.SearchForm;
import jp.co.internous.buzz.model.mapper.MstCategoryMapper;
import jp.co.internous.buzz.model.mapper.MstProductMapper;
import jp.co.internous.buzz.model.session.LoginSession;

/**
 * 商品検索に関する処理を行うコントローラー
 * @author インターノウス
 *
 */
@Controller
@RequestMapping("/buzz")
public class IndexController {

	/*
	 * フィールド定義
	 */
	@Autowired
	private MstCategoryMapper categoryMapper;
	@Autowired
	private MstProductMapper productMapper;
	@Autowired
	private LoginSession loginSession;
	
	/**
	 * トップページを初期表示する。
	 * @param m 画面表示用オブジェクト
	 * @return トップページ
	 */
	@RequestMapping("/")
	public String index(Model m) {
		if (loginSession.isLogined() == false && loginSession.getTmpUserId() == 0) {
			int tmpUserId = - (new java.util.Random().nextInt(999999999));
			loginSession.setTmpUserId(tmpUserId);
		}

		m.addAttribute("categories", categoryMapper.find());
		m.addAttribute("products", productMapper.find());
		m.addAttribute("loginSession", loginSession);

		return "index";
	}

	/**
	 * 検索処理を行う
	 * @param f 検索用フォーム
	 * @param m 画面表示用オブジェクト
	 * @return トップページ
	 */
	@RequestMapping("/searchItem")
	public String searchItem(SearchForm f, Model m) {
		int category = f.getCategory();
		String keywords = f.getKeywords().replace('　', ' ').replaceAll("[ ]{2,}", " ").trim();
		String[] keywordsArray = keywords.split(" ");
		List<MstProduct> products;
		if (category == 0) {
			products = productMapper.findByProductName(keywordsArray);
		} else {
			products = productMapper.findByCategoryAndProductName(category, keywordsArray);
		}			
		m.addAttribute("categories", categoryMapper.find());
		m.addAttribute("keywords", keywords);
		m.addAttribute("products", products);
		m.addAttribute("selected", category);
		m.addAttribute("loginSession", loginSession);
		
		return "index";
	}
}
