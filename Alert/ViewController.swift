
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
            //UIAlertController 을 생성
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다", preferredStyle: UIAlertController.Style.alert)
            
            //UIAlertAction 을 생성 (특별한 동작을 하지 않을 경우에는 handler를 nil로 합니다
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            
            //생성된 onAction을 얼럿에 추가합니다.
            lampOnAlert.addAction(onAction)
            
            
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            lamplmg.image = imgOn
            isLampOn=true
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn {
            //UIAlertController 생성한다.
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            
            //UIAlertAction 생성한다. 전구를 꺼야 하므로 핸들러에 중괄호를 넣어 추가적 작업을 합니다.
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {
                ACTION in self.lamplmg.image = self.imgOff
                self.isLampOn=false
            })
            
            //UIAlertAction 추가로 생성, 특별한 동작을 하지 않을 경우에는 핸들러를 nil로 합니다
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
    }
}

