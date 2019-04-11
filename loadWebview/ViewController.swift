//
//  ViewController.swift
//  loadWebview
//
//  Created by ajihairi on 11/04/19.
//  Copyright © 2019 ajihairi. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate{

    @IBOutlet weak var webviewcontainer: UIView!
    
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webView?.navigationDelegate = self
//        webView = WKWebView(frame: webviewcontainer.frame, configuration: WKWebViewConfiguration() )
//        self.webviewcontainer.addSubview(webView)
        webView = WKWebView(frame: webviewcontainer.bounds, configuration: WKWebViewConfiguration())
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.webviewcontainer.addSubview(webView)
        self.webView.allowsBackForwardNavigationGestures = true
        self.webviewcontainer.layer.borderWidth = 2
        // populate webview
//        let myURL = URL(string: "https://www.apple.com")
//        let myRequest = URLRequest(url: myURL!)
//        webView.load(myRequest)
        
        webView.loadHTMLString(htmlCode, baseURL: Bundle.main.resourceURL)
        
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let url = navigationAction.request.url {
            if url.host != nil {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                decisionHandler(.allow)
                return
            }
        }
    }

    let htmlCode = """
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
    <head>
        <!-- NAME: ART NEWSLETTER -->
        <!--[if gte mso 15]>
        <xml>
            <o:OfficeDocumentSettings>
            <o:AllowPNG/>
            <o:PixelsPerInch>96</o:PixelsPerInch>
            </o:OfficeDocumentSettings>
        </xml>
        <![endif]-->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Proofn News 12 Juli 2018</title>
        
    <style type="text/css">
        p{
            margin:10px 0;
            padding:0;
        }
        table{
            border-collapse:collapse;
        }
        h1,h2,h3,h4,h5,h6{
            display:block;
            margin:0;
            padding:0;
        }
        img,a img{
            border:0;
            height:auto;
            outline:none;
            text-decoration:none;
        }
        body,#bodyTable,#bodyCell{
            height:100%;
            margin:0;
            padding:0;
            width:100%;
        }
        .mcnPreviewText{
            display:none !important;
        }
        #outlook a{
            padding:0;
        }
        img{
            -ms-interpolation-mode:bicubic;
        }
        table{
            mso-table-lspace:0pt;
            mso-table-rspace:0pt;
        }
        .ReadMsgBody{
            width:100%;
        }
        .ExternalClass{
            width:100%;
        }
        p,a,li,td,blockquote{
            mso-line-height-rule:exactly;
        }
        a[href^=tel],a[href^=sms]{
            color:inherit;
            cursor:default;
            text-decoration:none;
        }
        p,a,li,td,body,table,blockquote{
            -ms-text-size-adjust:100%;
            -webkit-text-size-adjust:100%;
        }
        .ExternalClass,.ExternalClass p,.ExternalClass td,.ExternalClass div,.ExternalClass span,.ExternalClass font{
            line-height:100%;
        }
        a[x-apple-data-detectors]{
            color:inherit !important;
            text-decoration:none !important;
            font-size:inherit !important;
            font-family:inherit !important;
            font-weight:inherit !important;
            line-height:inherit !important;
        }
        .templateContainer{
            max-width:600px !important;
        }
        a.mcnButton{
            display:block;
        }
        .mcnImage,.mcnRetinaImage{
            vertical-align:bottom;
        }
        .mcnTextContent{
            word-break:break-word;
        }
        .mcnTextContent img{
            height:auto !important;
        }
        .mcnDividerBlock{
            table-layout:fixed !important;
        }
    /*
    @tab Page
    @section Heading 1
    @style heading 1
    */
        h1{
            /*@editable*/color:#FFFFFF;
            /*@editable*/font-family:'Noticia Text', Georgia, 'Times New Roman', serif;
            /*@editable*/font-size:48px;
            /*@editable*/font-style:normal;
            /*@editable*/font-weight:bold;
            /*@editable*/line-height:150%;
            /*@editable*/letter-spacing:normal;
            /*@editable*/text-align:center;
        }
    /*
    @tab Page
    @section Heading 2
    @style heading 2
    */
        h2{
            /*@editable*/color:#1F2F38;
            /*@editable*/font-family:'Noticia Text', Georgia, 'Times New Roman', serif;
            /*@editable*/font-size:48px;
            /*@editable*/font-style:normal;
            /*@editable*/font-weight:bold;
            /*@editable*/line-height:150%;
            /*@editable*/letter-spacing:normal;
            /*@editable*/text-align:center;
        }
    /*
    @tab Page
    @section Heading 3
    @style heading 3
    */
        h3{
            /*@editable*/color:#1F2F38;
            /*@editable*/font-family:'Noticia Text', Georgia, 'Times New Roman', serif;
            /*@editable*/font-size:36px;
            /*@editable*/font-style:normal;
            /*@editable*/font-weight:bold;
            /*@editable*/line-height:150%;
            /*@editable*/letter-spacing:normal;
            /*@editable*/text-align:center;
        }
    /*
    @tab Page
    @section Heading 4
    @style heading 4
    */
        h4{
            /*@editable*/color:#435864;
            /*@editable*/font-family:'Noticia Text', Georgia, 'Times New Roman', serif;
            /*@editable*/font-size:22px;
            /*@editable*/font-style:italic;
            /*@editable*/font-weight:normal;
            /*@editable*/line-height:125%;
            /*@editable*/letter-spacing:normal;
            /*@editable*/text-align:left;
        }
    /*
    @tab Header
    @section Header Container Style
    */
        #templateHeader{
            /*@editable*/background-color:#324D5C;
            /*@editable*/background-image:url("https://gallery.mailchimp.com/760630c16227137042371ad09/images/489ca80f-a09c-4301-9f7a-5dbc9a40e390.jpg");
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:153px;
            /*@editable*/padding-bottom:153px;
        }
    /*
    @tab Header
    @section Header Interior Style
    */
        .headerContainer{
            /*@editable*/background-color:transparent;
            /*@editable*/background-image:none;
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:0;
            /*@editable*/padding-bottom:0;
        }
    /*
    @tab Header
    @section Header Text
    */
        .headerContainer .mcnTextContent,.headerContainer .mcnTextContent p{
            /*@editable*/color:#FFFFFF;
            /*@editable*/font-family:'Noticia Text', Georgia, 'Times New Roman', serif;
            /*@editable*/font-size:18px;
            /*@editable*/line-height:150%;
            /*@editable*/text-align:left;
        }
    /*
    @tab Header
    @section Header Link
    */
        .headerContainer .mcnTextContent a,.headerContainer .mcnTextContent p a{
            /*@editable*/color:#FFFFFF;
            /*@editable*/font-weight:normal;
            /*@editable*/text-decoration:underline;
        }
    /*
    @tab Body
    @section Body Container Style
    */
        #templateBody{
            /*@editable*/background-color:#FFFFFF;
            /*@editable*/background-image:none;
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:72px;
            /*@editable*/padding-bottom:9px;
        }
    /*
    @tab Body
    @section Body Interior Style
    */
        .bodyContainer{
            /*@editable*/background-color:transparent;
            /*@editable*/background-image:none;
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:0;
            /*@editable*/padding-bottom:0;
        }
    /*
    @tab Body
    @section Body Text
    */
        .bodyContainer .mcnTextContent,.bodyContainer .mcnTextContent p{
            /*@editable*/color:#202020;
            /*@editable*/font-family:'Noticia Text', Georgia, 'Times New Roman', serif;
            /*@editable*/font-size:18px;
            /*@editable*/line-height:150%;
            /*@editable*/text-align:left;
        }
    /*
    @tab Body
    @section Body Link
    */
        .bodyContainer .mcnTextContent a,.bodyContainer .mcnTextContent p a{
            /*@editable*/color:#DE5B49;
            /*@editable*/font-weight:normal;
            /*@editable*/text-decoration:underline;
        }
    /*
    @tab Upper Columns
    @section Upper Columns Container Style
    */
        #templateUpperColumns{
            /*@editable*/background-color:#FFFFFF;
            /*@editable*/background-image:none;
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:2px;
            /*@editable*/padding-bottom:2px;
        }
    /*
    @tab Upper Columns
    @section Upper Columns Interior Style
    */
        #templateUpperColumns .columnContainer{
            /*@editable*/background-color:transparent;
            /*@editable*/background-image:none;
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:0;
            /*@editable*/padding-bottom:0;
        }
    /*
    @tab Upper Columns
    @section Upper Columns Text
    */
        #templateUpperColumns .columnContainer .mcnTextContent,#templateUpperColumns .columnContainer .mcnTextContent p{
            /*@editable*/color:#202020;
            /*@editable*/font-family:'Noticia Text', Georgia, 'Times New Roman', serif;
            /*@editable*/font-size:16px;
            /*@editable*/line-height:150%;
            /*@editable*/text-align:left;
        }
    /*
    @tab Upper Columns
    @section Upper Columns Link
    */
        #templateUpperColumns .columnContainer .mcnTextContent a,#templateUpperColumns .columnContainer .mcnTextContent p a{
            /*@editable*/color:#DE5B49;
            /*@editable*/font-weight:normal;
            /*@editable*/text-decoration:underline;
        }
    /*
    @tab Lower Columns
    @section Lower Columns Container Style
    */
        #templateLowerColumns{
            /*@editable*/background-color:#CDDCE4;
            /*@editable*/background-image:url("https://gallery.mailchimp.com/760630c16227137042371ad09/_compresseds/6a2cf086-4800-435d-a39d-19a32cb7329a.jpg");
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:40px;
            /*@editable*/padding-bottom:40px;
        }
    /*
    @tab Lower Columns
    @section Lower Columns Interior Style
    */
        #templateLowerColumns .columnContainer{
            /*@editable*/background-color:transparent;
            /*@editable*/background-image:none;
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:0;
            /*@editable*/padding-bottom:0;
        }
    /*
    @tab Lower Columns
    @section Lower Column Section Header Text
    */
        .lowerColumnHeaderContainer .mcnTextContent,.lowerColumnHeaderContainer .mcnTextContent p{
            /*@editable*/color:#202020;
            /*@editable*/font-family:'Noticia Text', Georgia, 'Times New Roman', serif;
            /*@editable*/font-size:18px;
            /*@editable*/line-height:150%;
            /*@editable*/text-align:left;
        }
    /*
    @tab Lower Columns
    @section Lower Column Section Header Link
    */
        .lowerColumnHeaderContainer .mcnTextContent a,.lowerColumnHeaderContainer .mcnTextContent p a{
            /*@editable*/color:#DE5B49;
            /*@editable*/font-weight:normal;
            /*@editable*/text-decoration:underline;
        }
    /*
    @tab Lower Columns
    @section Lower Columns Text
    */
        #templateLowerColumns .columnContainer .mcnTextContent,#templateLowerColumns .columnContainer .mcnTextContent p{
            /*@editable*/color:#202020;
            /*@editable*/font-family:'Noticia Text', Georgia, 'Times New Roman', serif;
            /*@editable*/font-size:18px;
            /*@editable*/line-height:150%;
            /*@editable*/text-align:left;
        }
    /*
    @tab Lower Columns
    @section Lower Columns Link
    */
        #templateLowerColumns .columnContainer .mcnTextContent a,#templateLowerColumns .columnContainer .mcnTextContent p a{
            /*@editable*/color:#DE5B49;
            /*@editable*/font-weight:normal;
            /*@editable*/text-decoration:underline;
        }
    /*
    @tab Footer
    @section Footer Style
    */
        #templateFooter{
            /*@editable*/background-color:#324D5C;
            /*@editable*/background-image:none;
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:90px;
            /*@editable*/padding-bottom:90px;
        }
    /*
    @tab Footer
    @section Footer Interior Style
    */
        .footerContainer{
            /*@editable*/background-color:transparent;
            /*@editable*/background-image:none;
            /*@editable*/background-repeat:no-repeat;
            /*@editable*/background-position:center;
            /*@editable*/background-size:cover;
            /*@editable*/border-top:0;
            /*@editable*/border-bottom:0;
            /*@editable*/padding-top:0;
            /*@editable*/padding-bottom:0;
        }
    /*
    @tab Footer
    @section Footer Text
    */
        .footerContainer .mcnTextContent,.footerContainer .mcnTextContent p{
            /*@editable*/color:#FFFFFF;
            /*@editable*/font-family:Helvetica;
            /*@editable*/font-size:12px;
            /*@editable*/line-height:150%;
            /*@editable*/text-align:center;
        }
    /*
    @tab Footer
    @section Footer Link
    */
        .footerContainer .mcnTextContent a,.footerContainer .mcnTextContent p a{
            /*@editable*/color:#FFFFFF;
            /*@editable*/font-weight:normal;
            /*@editable*/text-decoration:underline;
        }
    @media only screen and (max-width: 480px){
        .columnWrapper{
            max-width:100% !important;
            width:100% !important;
        }

}    @media only screen and (max-width: 480px){
        body,table,td,p,a,li,blockquote{
            -webkit-text-size-adjust:none !important;
        }

}    @media only screen and (max-width: 480px){
        body{
            width:100% !important;
            min-width:100% !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnRetinaImage{
            max-width:100% !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnImage{
            width:100% !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnCartContainer,.mcnCaptionTopContent,.mcnRecContentContainer,.mcnCaptionBottomContent,.mcnTextContentContainer,.mcnBoxedTextContentContainer,.mcnImageGroupContentContainer,.mcnCaptionLeftTextContentContainer,.mcnCaptionRightTextContentContainer,.mcnCaptionLeftImageContentContainer,.mcnCaptionRightImageContentContainer,.mcnImageCardLeftTextContentContainer,.mcnImageCardRightTextContentContainer,.mcnImageCardLeftImageContentContainer,.mcnImageCardRightImageContentContainer{
            max-width:100% !important;
            width:100% !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnBoxedTextContentContainer{
            min-width:100% !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnImageGroupContent{
            padding:9px !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnCaptionLeftContentOuter .mcnTextContent,.mcnCaptionRightContentOuter .mcnTextContent{
            padding-top:9px !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnImageCardTopImageContent,.mcnCaptionBottomContent:last-child .mcnCaptionBottomImageContent,.mcnCaptionBlockInner .mcnCaptionTopContent:last-child .mcnTextContent{
            padding-top:18px !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnImageCardBottomImageContent{
            padding-bottom:9px !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnImageGroupBlockInner{
            padding-top:0 !important;
            padding-bottom:0 !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnImageGroupBlockOuter{
            padding-top:9px !important;
            padding-bottom:9px !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnTextContent,.mcnBoxedTextContentColumn{
            padding-right:18px !important;
            padding-left:18px !important;
        }

}    @media only screen and (max-width: 480px){
        .mcnImageCardLeftImageContent,.mcnImageCardRightImageContent{
            padding-right:18px !important;
            padding-bottom:0 !important;
            padding-left:18px !important;
        }

}    @media only screen and (max-width: 480px){
        .mcpreview-image-uploader{
            display:none !important;
            width:100% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Heading 1
    */
        h1{
            /*@editable*/font-size:36px !important;
            /*@editable*/line-height:125% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Heading 2
    */
        h2{
            /*@editable*/font-size:30px !important;
            /*@editable*/line-height:125% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Heading 3
    */
        h3{
            /*@editable*/font-size:26px !important;
            /*@editable*/line-height:150% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Heading 4
    */
        h4{
            /*@editable*/font-size:22px !important;
            /*@editable*/line-height:150% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Boxed Text
    */
        .mcnBoxedTextContentContainer .mcnTextContent,.mcnBoxedTextContentContainer .mcnTextContent p{
            /*@editable*/font-size:14px !important;
            /*@editable*/line-height:150% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Header Text
    */
        .headerContainer .mcnTextContent,.headerContainer .mcnTextContent p{
            /*@editable*/font-size:16px !important;
            /*@editable*/line-height:150% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Body Text
    */
        .bodyContainer .mcnTextContent,.bodyContainer .mcnTextContent p{
            /*@editable*/font-size:16px !important;
            /*@editable*/line-height:150% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Upper Column Text
    */
        #templateUpperColumns .columnContainer .mcnTextContent,#templateUpperColumns .columnContainer .mcnTextContent p{
            /*@editable*/font-size:16px !important;
            /*@editable*/line-height:150% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Lower Column Section Header Text
    */
        .lowerColumnHeaderContainer .mcnTextContent,.lowerColumnHeaderContainer .mcnTextContent p{
            /*@editable*/font-size:16px !important;
            /*@editable*/line-height:150% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Lower Column Text
    */
        #templateLowerColumns .columnContainer .mcnTextContent,#templateLowerColumns .columnContainer .mcnTextContent p{
            /*@editable*/font-size:16px !important;
            /*@editable*/line-height:150% !important;
        }

}    @media only screen and (max-width: 480px){
    /*
    @tab Mobile Styles
    @section Footer Text
    */
        .footerContainer .mcnTextContent,.footerContainer .mcnTextContent p{
            /*@editable*/font-size:14px !important;
            /*@editable*/line-height:150% !important;
        }

}</style></head>
    <body>
        <!--*|IF:MC_PREVIEW_TEXT|*-->
        <!--[if !gte mso 9]><!----><span class="mcnPreviewText" style="display:none; font-size:0px; line-height:0px; max-height:0px; max-width:0px; opacity:0; overflow:hidden; visibility:hidden; mso-hide:all;">Info Pendaftaran Djarum Beasiswa Plus, RK Gubernur Baru Jawa Barat, & Potensi Pasar Digital Bagi Pelaku UMKM</span>
        <!--<![endif]-->
        <!--*|END:IF|*-->
        <center>
            <table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="bodyTable">
                <tr>
                    <td align="center" valign="top" id="bodyCell">
                        <!-- BEGIN TEMPLATE // -->
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td align="center" valign="top" id="templateHeader" data-template-container>
                                    <!--[if (gte mso 9)|(IE)]>
                                    <table align="center" border="0" cellspacing="0" cellpadding="0" width="600" style="width:600px;">
                                    <tr>
                                    <td align="center" valign="top" width="600" style="width:600px;">
                                    <![endif]-->
                                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" class="templateContainer">
                                        <tr>
                                            <td valign="top" class="headerContainer"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnImageBlock" style="min-width:100%;">
    <tbody class="mcnImageBlockOuter">
            <tr>
                <td valign="top" style="padding:9px" class="mcnImageBlockInner">
                    <table align="left" width="100%" border="0" cellpadding="0" cellspacing="0" class="mcnImageContentContainer" style="min-width:100%;">
                        <tbody><tr>
                            <td class="mcnImageContent" valign="top" style="padding-right: 9px; padding-left: 9px; padding-top: 0; padding-bottom: 0; text-align:center;">
                                
                                    
                                        <img align="center" alt="" src="https://gallery.mailchimp.com/760630c16227137042371ad09/images/96879827-c7e6-4d48-8f34-41e7837ad07c.png" width="500" style="max-width:500px; padding-bottom: 0; display: inline !important; vertical-align: bottom;" class="mcnImage">
                                    
                                
                            </td>
                        </tr>
                    </tbody></table>
                </td>
            </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="600" style="width:600px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            <p style="text-align: center;"><span style="font-family:courier new,courier,lucida sans typewriter,lucida typewriter,monospace"><span style="font-size:28px"><span style="color:#000000"><strong>Proofn Letter's</strong></span></span></span></p>

<div style="text-align: center;">&nbsp;</div>

                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table></td>
                                        </tr>
                                    </table>
                                <!--[if (gte mso 9)|(IE)]>
                                </td>
                                </tr>
                                </table>
                                <![endif]-->
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top" id="templateBody" data-template-container>
                                    <!--[if (gte mso 9)|(IE)]>
                                    <table align="center" border="0" cellspacing="0" cellpadding="0" width="600" style="width:600px;">
                                    <tr>
                                    <td align="center" valign="top" width="600" style="width:600px;">
                                    <![endif]-->
                                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" class="templateContainer">
                                        <tr>
                                            <td valign="top" class="bodyContainer"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="600" style="width:600px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            <div style="text-align: center;"><span style="font-family:arial,helvetica neue,helvetica,sans-serif"><span style="color:#000000">Proofn Letter's&nbsp;adalah kumpulan konten&nbsp;dari Proofn yang berisi tips, info, news, ataupun penawaran menarik untuk para&nbsp;pengguna Proofn&nbsp;tercinta.</span></span></div>

                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnDividerBlock" style="min-width:100%;">
    <tbody class="mcnDividerBlockOuter">
        <tr>
            <td class="mcnDividerBlockInner" style="min-width: 100%; padding: 54px 18px 45px;">
                <table class="mcnDividerContent" border="0" cellpadding="0" cellspacing="0" width="100%" style="min-width: 100%;border-top: 2px solid #DE5B49;">
                    <tbody><tr>
                        <td>
                            <span></span>
                        </td>
                    </tr>
                </tbody></table>
<!--
                <td class="mcnDividerBlockInner" style="padding: 18px;">
                <hr class="mcnDividerContent" style="border-bottom-color:none; border-left-color:none; border-right-color:none; border-bottom-width:0; border-left-width:0; border-right-width:0; margin-top:0; margin-right:0; margin-bottom:0; margin-left:0;" />
-->
            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="600" style="width:600px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            <h2>Proofn News</h2>

                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table></td>
                                        </tr>
                                    </table>
                                <!--[if (gte mso 9)|(IE)]>
                                </td>
                                </tr>
                                </table>
                                <![endif]-->
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top" id="templateUpperColumns" data-template-container>
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" class="templateContainer">
                                        <tr>
                                            <td valign="top">
                                                <!--[if (gte mso 9)|(IE)]>
                                                <table align="center" border="0" cellspacing="0" cellpadding="0" width="600" style="width:600px;">
                                                <tr>
                                                <td align="center" valign="top" width="200" style="width:200px;">
                                                <![endif]-->
                                                <table align="left" border="0" cellpadding="0" cellspacing="0" width="200" class="columnWrapper">
                                                    <tr>
                                                        <td valign="top" class="columnContainer"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnCaptionBlock">
    <tbody class="mcnCaptionBlockOuter">
        <tr>
            <td class="mcnCaptionBlockInner" valign="top" style="padding:9px;">
                

<table align="left" border="0" cellpadding="0" cellspacing="0" class="mcnCaptionBottomContent">
    <tbody><tr>
        <td class="mcnCaptionBottomImageContent" align="center" valign="top" style="padding:0 9px 9px 9px;">
        
            

            <img alt="" src="https://gallery.mailchimp.com/760630c16227137042371ad09/images/9b673bbc-4980-412c-b58e-aa63a9eb7e96.jpg" width="164" style="max-width:700px;" class="mcnImage">
            
        
        </td>
    </tr>
    <tr>
        <td class="mcnTextContent" valign="top" style="padding:0 9px 0 9px;" width="164">
            <h4><span style="font-size:15px"><strong>RK Gubernur Baru Jawa Barat</strong></span></h4>

        </td>
    </tr>
</tbody></table>





            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="200" style="width:200px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            Sejumlah lembaga survey di Indonesia telah memfinalisasi hasil hitung cepat (quick count) pilgub Jawa Barat. Hasilnya, pasangan Ridwan Kamil-Uu Ruzhanul Ulum menang.
                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="200" style="width:200px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            <a href="http:// https://news.detik.com/berita/4086621/hasil-final-quick-count-pilgub-jabar-ridwan-kamil-uu-menang" target="_blank">read more &gt;&gt;</a>
                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table></td>
                                                    </tr>
                                                </table>
                                                <!--[if (gte mso 9)|(IE)]>
                                                </td>
                                                <td align="center" valign="top" width="200" style="width:200px;">
                                                <![endif]-->
                                                <table align="left" border="0" cellpadding="0" cellspacing="0" width="200" class="columnWrapper">
                                                    <tr>
                                                        <td valign="top" class="columnContainer"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnCaptionBlock">
    <tbody class="mcnCaptionBlockOuter">
        <tr>
            <td class="mcnCaptionBlockInner" valign="top" style="padding:9px;">
                

<table align="left" border="0" cellpadding="0" cellspacing="0" class="mcnCaptionBottomContent">
    <tbody><tr>
        <td class="mcnCaptionBottomImageContent" align="center" valign="top" style="padding:0 9px 9px 9px;">
        
            

            <img alt="" src="https://gallery.mailchimp.com/760630c16227137042371ad09/images/b3b994a5-f250-40b1-b74e-b2d53f34371f.jpg" width="164" style="max-width:1453px;" class="mcnImage">
            
        
        </td>
    </tr>
    <tr>
        <td class="mcnTextContent" valign="top" style="padding:0 9px 0 9px;" width="164">
            <h4><span style="font-size:15px"><strong>Info Pendaftaran Djarum Beasiswa Plus</strong></span></h4>

        </td>
    </tr>
</tbody></table>





            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="200" style="width:200px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            Sejak 1984, Djarum Foundation terus konsisten dalam memberikan kontribusi terhadap dunia pendidikan di Indonesia dalam mewujudkan masa depan yang lebih baik.
                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="200" style="width:200px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            <a href="https://djarumbeasiswaplus.org/" target="_blank">read more &gt;&gt;</a>
                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table></td>
                                                    </tr>
                                                </table>
                                                <!--[if (gte mso 9)|(IE)]>
                                                </td>
                                                <td align="center" valign="top" width="200" style="width:200px;">
                                                <![endif]-->
                                                <table align="left" border="0" cellpadding="0" cellspacing="0" width="200" class="columnWrapper">
                                                    <tr>
                                                        <td valign="top" class="columnContainer"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnCaptionBlock">
    <tbody class="mcnCaptionBlockOuter">
        <tr>
            <td class="mcnCaptionBlockInner" valign="top" style="padding:9px;">
                

<table align="left" border="0" cellpadding="0" cellspacing="0" class="mcnCaptionBottomContent">
    <tbody><tr>
        <td class="mcnCaptionBottomImageContent" align="center" valign="top" style="padding:0 9px 9px 9px;">
        
            

            <img alt="" src="https://gallery.mailchimp.com/760630c16227137042371ad09/images/df895e80-b38a-4bf1-aaa3-e90673b1f168.jpg" width="164" style="max-width:800px;" class="mcnImage">
            
        
        </td>
    </tr>
    <tr>
        <td class="mcnTextContent" valign="top" style="padding:0 9px 0 9px;" width="164">
            <h4><span style="font-size:15px"><strong>Potensi Pasar Digital Bagi Pelaku UMKM</strong></span></h4>

        </td>
    </tr>
</tbody></table>





            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="200" style="width:200px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            <div>Dalam dunia industri, era saat ini&nbsp;disebut&nbsp;<em>Industry 4.0</em>. Yakni industri yang memanfaatkan sistem digital untuk melakukan pemasaran sekaligus transaksi yang ada di dalamnya.</div>

                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="200" style="width:200px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            <a href="https://blog.proofn.id/potensi-pasar-digital-bagi-pelaku-umkm-8b1fb3efa9d1" target="_blank">read more &gt;&gt;</a>
                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table></td>
                                                    </tr>
                                                </table>
                                                <!--[if (gte mso 9)|(IE)]>
                                                </td>
                                                </tr>
                                                </table>
                                                <![endif]-->
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top" id="templateLowerColumns" data-template-container>
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%" class="templateContainer">
                                        <tr>
                                            <td valign="top" class="lowerColumnHeaderContainer"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="600" style="width:600px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            <div style="text-align: center;"><span style="font-family:georgia,times,times new roman,serif"><span style="font-size:22px"><strong>Terbaru di blog Proofn</strong></span></span></div>

                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table></td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <!--[if (gte mso 9)|(IE)]>
                                                <table align="center" border="0" cellspacing="0" cellpadding="0" width="600" style="width:600px;">
                                                <tr>
                                                <td align="center" valign="top" width="300" style="width:300px;">
                                                <![endif]-->
                                                <table align="left" border="0" cellpadding="0" cellspacing="0" width="300" class="columnWrapper">
                                                    <tr>
                                                        <td valign="top" class="columnContainer"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="300" style="width:300px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            <h4><span style="font-size:18px"><strong>5 Tips agar Interview Beasiswamu Sukses</strong></span></h4>

<p><span style="font-size:16px">Buat kalian yang sedang mengecap pendidikan baik di tingkat SMA maupun universitas, beasiswa bisa menjadi tiket emas untuk mendapatkan pendidikan berkualitas dengan biaya rendah.&nbsp;<br>
<br>
Artikel ini membahas apa saja yang harus disiapkan dalam proses interview.</span></p>
<a href="https://medium.com/@proofnid/5-tips-agar-interview-beasiswamu-sukses-1202dc713270" target="_blank">Read on »</a>
                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnDividerBlock" style="min-width:100%;">
    <tbody class="mcnDividerBlockOuter">
        <tr>
            <td class="mcnDividerBlockInner" style="min-width: 100%; padding: 36px 18px 18px;">
                <table class="mcnDividerContent" border="0" cellpadding="0" cellspacing="0" width="100%" style="min-width:100%;">
                    <tbody><tr>
                        <td>
                            <span></span>
                        </td>
                    </tr>
                </tbody></table>
<!--
                <td class="mcnDividerBlockInner" style="padding: 18px;">
                <hr class="mcnDividerContent" style="border-bottom-color:none; border-left-color:none; border-right-color:none; border-bottom-width:0; border-left-width:0; border-right-width:0; margin-top:0; margin-right:0; margin-bottom:0; margin-left:0;" />
-->
            </td>
        </tr>
    </tbody>
</table></td>
                                                    </tr>
                                                </table>
                                                <!--[if (gte mso 9)|(IE)]>
                                                </td>
                                                <td align="center" valign="top" width="300" style="width:300px;">
                                                <![endif]-->
                                                <table align="left" border="0" cellpadding="0" cellspacing="0" width="300" class="columnWrapper">
                                                    <tr>
                                                        <td valign="top" class="columnContainer"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnImageBlock" style="min-width:100%;">
    <tbody class="mcnImageBlockOuter">
            <tr>
                <td valign="top" style="padding:9px" class="mcnImageBlockInner">
                    <table align="left" width="100%" border="0" cellpadding="0" cellspacing="0" class="mcnImageContentContainer" style="min-width:100%;">
                        <tbody><tr>
                            <td class="mcnImageContent" valign="top" style="padding-right: 9px; padding-left: 9px; padding-top: 0; padding-bottom: 0; text-align:center;">
                                
                                    
                                        <img align="center" alt="" src="https://gallery.mailchimp.com/760630c16227137042371ad09/_compresseds/a738d2e6-d5af-4bf4-af59-4e69590ab467.jpg" width="264" style="max-width:4480px; padding-bottom: 0; display: inline !important; vertical-align: bottom;" class="mcnImage">
                                    
                                
                            </td>
                        </tr>
                    </tbody></table>
                </td>
            </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnDividerBlock" style="min-width:100%;">
    <tbody class="mcnDividerBlockOuter">
        <tr>
            <td class="mcnDividerBlockInner" style="min-width: 100%; padding: 36px 18px 18px;">
                <table class="mcnDividerContent" border="0" cellpadding="0" cellspacing="0" width="100%" style="min-width:100%;">
                    <tbody><tr>
                        <td>
                            <span></span>
                        </td>
                    </tr>
                </tbody></table>
<!--
                <td class="mcnDividerBlockInner" style="padding: 18px;">
                <hr class="mcnDividerContent" style="border-bottom-color:none; border-left-color:none; border-right-color:none; border-bottom-width:0; border-left-width:0; border-right-width:0; margin-top:0; margin-right:0; margin-bottom:0; margin-left:0;" />
-->
            </td>
        </tr>
    </tbody>
</table></td>
                                                    </tr>
                                                </table>
                                                <!--[if (gte mso 9)|(IE)]>
                                                </td>
                                                </tr>
                                                </table>
                                                <![endif]-->
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" valign="top" id="templateFooter" data-template-container>
                                    <!--[if (gte mso 9)|(IE)]>
                                    <table align="center" border="0" cellspacing="0" cellpadding="0" width="600" style="width:600px;">
                                    <tr>
                                    <td align="center" valign="top" width="600" style="width:600px;">
                                    <![endif]-->
                                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" class="templateContainer">
                                        <tr>
                                            <td valign="top" class="footerContainer"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowBlock" style="min-width:100%;">
    <tbody class="mcnFollowBlockOuter">
        <tr>
            <td align="center" valign="top" style="padding:9px" class="mcnFollowBlockInner">
                <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentContainer" style="min-width:100%;">
    <tbody><tr>
        <td align="center" style="padding-left:9px;padding-right:9px;">
            <table border="0" cellpadding="0" cellspacing="0" class="mcnFollowContent">
                <tbody><tr>
                    <td align="center" valign="top" style="padding-top:9px; padding-right:9px; padding-left:9px;">
                        <table align="center" border="0" cellpadding="0" cellspacing="0">
                            <tbody><tr>
                                <td align="center" valign="top">
                                    <!--[if mso]>
                                    <table align="center" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                    <![endif]-->
                                    
                                        <!--[if mso]>
                                        <td align="center" valign="top">
                                        <![endif]-->
                                        
                                        
                                            <table align="left" border="0" cellpadding="0" cellspacing="0" style="display:inline;">
                                                <tbody><tr>
                                                    <td valign="top" style="padding-right:10px; padding-bottom:9px;" class="mcnFollowContentItemContainer">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentItem">
                                                            <tbody><tr>
                                                                <td align="left" valign="middle" style="padding-top:5px; padding-right:10px; padding-bottom:5px; padding-left:9px;">
                                                                    <table align="left" border="0" cellpadding="0" cellspacing="0" width="">
                                                                        <tbody><tr>
                                                                            
                                                                            
                                                                                <td align="left" valign="middle" class="mcnFollowTextContent" style="padding-left:5px;">
                                                                                    <a href="https://proofn.id/" target="" style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;font-size: 14px;text-decoration: none;color: #FDFDFD;font-weight: normal;">HOME</a>
                                                                                </td>
                                                                            
                                                                        </tr>
                                                                    </tbody></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                            </tbody></table>
                                        
                                        <!--[if mso]>
                                        </td>
                                        <![endif]-->
                                    
                                        <!--[if mso]>
                                        <td align="center" valign="top">
                                        <![endif]-->
                                        
                                        
                                            <table align="left" border="0" cellpadding="0" cellspacing="0" style="display:inline;">
                                                <tbody><tr>
                                                    <td valign="top" style="padding-right:10px; padding-bottom:9px;" class="mcnFollowContentItemContainer">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentItem">
                                                            <tbody><tr>
                                                                <td align="left" valign="middle" style="padding-top:5px; padding-right:10px; padding-bottom:5px; padding-left:9px;">
                                                                    <table align="left" border="0" cellpadding="0" cellspacing="0" width="">
                                                                        <tbody><tr>
                                                                            
                                                                            
                                                                                <td align="left" valign="middle" class="mcnFollowTextContent" style="padding-left:5px;">
                                                                                    <a href="https://blog.proofn.id/" target="" style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;font-size: 14px;text-decoration: none;color: #FDFDFD;font-weight: normal;">BLOG</a>
                                                                                </td>
                                                                            
                                                                        </tr>
                                                                    </tbody></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                            </tbody></table>
                                        
                                        <!--[if mso]>
                                        </td>
                                        <![endif]-->
                                    
                                        <!--[if mso]>
                                        <td align="center" valign="top">
                                        <![endif]-->
                                        
                                        
                                            <table align="left" border="0" cellpadding="0" cellspacing="0" style="display:inline;">
                                                <tbody><tr>
                                                    <td valign="top" style="padding-right:10px; padding-bottom:9px;" class="mcnFollowContentItemContainer">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentItem">
                                                            <tbody><tr>
                                                                <td align="left" valign="middle" style="padding-top:5px; padding-right:10px; padding-bottom:5px; padding-left:9px;">
                                                                    <table align="left" border="0" cellpadding="0" cellspacing="0" width="">
                                                                        <tbody><tr>
                                                                            
                                                                            
                                                                                <td align="left" valign="middle" class="mcnFollowTextContent" style="padding-left:5px;">
                                                                                    <a href="https://proofn.id/panduan/" target="" style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;font-size: 14px;text-decoration: none;color: #FDFDFD;font-weight: normal;">PANDUAN</a>
                                                                                </td>
                                                                            
                                                                        </tr>
                                                                    </tbody></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                            </tbody></table>
                                        
                                        <!--[if mso]>
                                        </td>
                                        <![endif]-->
                                    
                                        <!--[if mso]>
                                        <td align="center" valign="top">
                                        <![endif]-->
                                        
                                        
                                            <table align="left" border="0" cellpadding="0" cellspacing="0" style="display:inline;">
                                                <tbody><tr>
                                                    <td valign="top" style="padding-right:10px; padding-bottom:9px;" class="mcnFollowContentItemContainer">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentItem">
                                                            <tbody><tr>
                                                                <td align="left" valign="middle" style="padding-top:5px; padding-right:10px; padding-bottom:5px; padding-left:9px;">
                                                                    <table align="left" border="0" cellpadding="0" cellspacing="0" width="">
                                                                        <tbody><tr>
                                                                            
                                                                            
                                                                                <td align="left" valign="middle" class="mcnFollowTextContent" style="padding-left:5px;">
                                                                                    <a href="https://proofn.id/career/" target="" style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;font-size: 14px;text-decoration: none;color: #FDFDFD;font-weight: normal;">CAREER</a>
                                                                                </td>
                                                                            
                                                                        </tr>
                                                                    </tbody></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                            </tbody></table>
                                        
                                        <!--[if mso]>
                                        </td>
                                        <![endif]-->
                                    
                                        <!--[if mso]>
                                        <td align="center" valign="top">
                                        <![endif]-->
                                        
                                        
                                            <table align="left" border="0" cellpadding="0" cellspacing="0" style="display:inline;">
                                                <tbody><tr>
                                                    <td valign="top" style="padding-right:0; padding-bottom:9px;" class="mcnFollowContentItemContainer">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentItem">
                                                            <tbody><tr>
                                                                <td align="left" valign="middle" style="padding-top:5px; padding-right:10px; padding-bottom:5px; padding-left:9px;">
                                                                    <table align="left" border="0" cellpadding="0" cellspacing="0" width="">
                                                                        <tbody><tr>
                                                                            
                                                                            
                                                                                <td align="left" valign="middle" class="mcnFollowTextContent" style="padding-left:5px;">
                                                                                    <a href="https://play.google.com/store/apps/details?id=com.myabuy.proofn" target="" style="font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica, sans-serif;font-size: 14px;text-decoration: none;color: #FDFDFD;font-weight: normal;">DOWNLOAD</a>
                                                                                </td>
                                                                            
                                                                        </tr>
                                                                    </tbody></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>
                                                    </td>
                                                </tr>
                                            </tbody></table>
                                        
                                        <!--[if mso]>
                                        </td>
                                        <![endif]-->
                                    
                                    <!--[if mso]>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
                        </tbody></table>
                    </td>
                </tr>
            </tbody></table>
        </td>
    </tr>
</tbody></table>

            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnButtonBlock" style="min-width:100%;">
    <tbody class="mcnButtonBlockOuter">
        <tr>
            <td style="padding-top:0; padding-right:18px; padding-bottom:18px; padding-left:18px;" valign="top" align="center" class="mcnButtonBlockInner">
                <table border="0" cellpadding="0" cellspacing="0" class="mcnButtonContentContainer" style="border-collapse: separate !important;border-radius: 3px;background-color: #2BAADF;">
                    <tbody>
                        <tr>
                            <td align="center" valign="middle" class="mcnButtonContent" style="font-family: Arial; font-size: 16px; padding: 15px;">
                                <a class="mcnButton " title="SUBSCRIBE" href="https://medium.com/@proofnid" target="_blank" style="font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;">SUBSCRIBE</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width:100%;">
    <tbody class="mcnTextBlockOuter">
        <tr>
            <td valign="top" class="mcnTextBlockInner" style="padding-top:9px;">
                  <!--[if mso]>
                <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
                <tr>
                <![endif]-->
                
                <!--[if mso]>
                <td valign="top" width="600" style="width:600px;">
                <![endif]-->
                <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width:100%; min-width:100%;" width="100%" class="mcnTextContentContainer">
                    <tbody><tr>
                        
                        <td valign="top" class="mcnTextContent" style="padding-top:0; padding-right:18px; padding-bottom:9px; padding-left:18px;">
                        
                            Perumahan Delima Jl. Cikutra No.85F Bandung, Jawa Barat 40124<br>
contact@proofn.com<br>
+62 856-4282-6212
                        </td>
                    </tr>
                </tbody></table>
                <!--[if mso]>
                </td>
                <![endif]-->
                
                <!--[if mso]>
                </tr>
                </table>
                <![endif]-->
            </td>
        </tr>
    </tbody>
</table></td>
                                        </tr>
                                    </table>
                                    <!--[if (gte mso 9)|(IE)]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>
                            </tr>
                        </table>
                        <!-- // END TEMPLATE -->
                    </td>
                </tr>
            </table>
        </center>
    </body>
</html>
"""

}

