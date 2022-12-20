
import UIKit

class ViewController: UIViewController {
    let imgOn = UIImage(named: "lamp-on.png") //켜진 전구 이미지
    let imgOff = UIImage(named: "lamp-off.png") //꺼진 전구 이미지
    let imgRemove = UIImage(named: "lamp-remove.png") //제거된 전구 이미지
    var isLampOn = true //전구가 켜졌는지의 여부를 나타내는 변수
    
    @IBOutlet var lamplmg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lamplmg.image = imgOn
    }


    @IBAction func btnLampOn(_ sender: UIButton) {
        if(isLampOn==true) {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            lamplmg.image = imgOn
            isLampOn=true
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
    }
}

