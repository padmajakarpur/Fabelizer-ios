//
//  HomeViewController.swift
//  Fabelizer
//
//  Created by Infinitum on 04/10/18.
//  Copyright © 2018 Infinitumus.com. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var MenubarBtn: UIBarButtonItem!
    var imagarr:Array=[UIImage]()

    @IBOutlet weak var PageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MenubarBtn.target=revealViewController()
        MenubarBtn.action=#selector(SWRevealViewController.revealToggle(_:))
        revealViewController()?.rearViewRevealWidth=270;
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        imagarr=[UIImage(named: "back2")!,UIImage(named: "Back1")!,UIImage(named: "back2")!]

        scrollView.isPagingEnabled=true

        // Do any additional setup after loading the view.
    }

    func reateview()
    {
        for var i in (0..<imagarr.count)
        {
            if let innerView=Bundle.main.loadNibNamed("PageView", owner: self, options: nil)?.first as? PageView {
                innerView.PageViewImage.image=imagarr[i]
                innerView.Pessbtn.tag=i;
                innerView.Pessbtn.addTarget(self, action: #selector(HomeViewController.gettag(sendr:)), for: .touchUpInside)
                innerView.frame=scrollView.frame
                innerView.frame.origin .x=CGFloat(i)*self.view.bounds.width
                innerView.frame.origin .y=0
                scrollView .addSubview(innerView)
            }
            
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        scrollView.contentSize=CGSize(width: self.view.bounds.width * CGFloat(imagarr.count), height: scrollView.bounds.height)
            scrollView.showsHorizontalScrollIndicator=false
        reateview()
    }
    
    @objc func gettag(sendr:UIButton) {
        let i = sendr.tag
        print("tag is=",i)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
      let page=scrollView.contentOffset.x / scrollView.frame.size.width
    PageControl.currentPage=Int(page)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
