// Copyright 2017 Brightec
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

//var arry = [                       "A12323","B1231123","C12315454\n54523123","D1231","E123dghfj\nhu \n gjydhyfjkd \n hgjkdhg hg jhgjhggfr  123123","F123123123","G1231fgt  gf  g gh23123","H123123123","I12 gh31 23123","J12 3123 123","K1212 3123"]

var arry2 = [
    [
        [
            "1 fgthuju f ghrj fjudurtfghrtd "
        ],
        [
            "11"
        ],
        [
            "sdcsd"
        ],
        [
            "sdcsd"
        ],
        [
            "cdscsd"
        ]
    ],
    [
        [
            "2 gfht"
        ],
        [
            "22"
        ],
        [
            "Director",
            "Frist Value",
            "dscsd"
        ],
        [
            "Director,Tech",
            "10/25/2019",
            "Test Art",
            "MD-12345",
            "zscsd"
        ],
        [
            "Director",
            "zdczd"
        ]
    ],
    [
        [
            "3 gh"
        ],
        [
            "33"
        ],
        [
            "Director,Tech",
            "10/23/2019",
            "Frist Row"
        ],
        [
            "Tech",
            "Second Row"
        ],
        [
            "Director",
            "Third Row",
            "MD-12345"
        ]
    ],
    [
        [
            "4 hjkh jk fght"
        ],
        [
            "44"
        ],
        [
            "Director,Tech",
            "Four row"
        ],
        [],
        []
    ],
    [
        [
            "5"
        ],
        [
            "55"
        ],
        [
            "Five Row",
            "cdsdcdsc"
        ],
        [
            "sdcsdc"
        ],
        [
            "dcsd"
        ]
    ],
    [
        [
            "6"
        ],
        [
            "66"
        ],
        [
            "Director,Tech",
            "10/23/2019",
            "Frist Row"
        ],
        [
            "Tech",
            "Second Row"
        ],
        [
            "Director",
            "Third Row",
            "MD-12345"
        ]
    ],
    [
        [
            "7"
        ],
        [
            "77"
        ],
        [
            "Director,Tech",
            "Four row"
        ],
        [],
        []
    ],
    [
        [
            "8 guh jhujkhkjhjkhjk hjk hjkh hjkhjkh   jhiuijhjuhj    hujhjkh  hjuh jkh jkhnjkn km,jnubg mnjhuyk nhjmuy7 8 guh jhujkhkjhjkhjk hjk hjkh hjkhjkh   jhiuijhjuhj    hujhjkh  hjuh jkh jkhnjkn km,jnubg mnjhuyk nhjmuy7 8 guh jhujkhkjhjkhjk hjk hjkh hjkhjkh   jhiuijhjuhj    hujhjkh  hjuh jkh jkhnjkn km,jnubg mnjhuyk nhjmuy7"
        ],
        [
            "88"
        ],
        [
            "Five Row",
            "cdsdcdsc"
        ],
        [
            "sdcsdc"
        ],
        [
            "dcsd"
        ]
    ], [
        [
            "9"
        ],
        [
            "99"
        ],
        [
            "Director,Tech",
            "10/23/2019",
            "Frist Row"
        ],
        [
            "Tech",
            "Second Row"
        ],
        [
            "Director",
            "Third Row",
            "MD-12345",
            "Director",
            "Third Row",
            "MD-12345",
            "Director",
            "Third Row",
            "MD-12345"
            
        ]
    ],
       [
        [
            "10"
        ],
        [
            "1010"
        ],
        [
            "Director,Tech",
            "Four row"
        ],
        [],
        []
    ],
       [
        [
            "11"
        ],
        [
            "1111"
        ],
        [
            "Five Row",
            "cdsdcdsc"
        ],
        [
            "sdcsdc"
        ],
        [
            "dcsd"
        ]
    ]
]


class CollectionViewController: UIViewController {
    
  //  let contentCellIdentifier = "ContentCellIdentifier"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //    collectionView.register(UINib(nibName: "ContentCollectionViewCell", bundle: nil),
                             //   forCellWithReuseIdentifier: contentCellIdentifier)
    }
    
}

// MARK: - UICollectionViewDataSource
extension CollectionViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // let b =  arry2[indexPath.row]
        return arry2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arry2[0].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // swiftlint:disable force_cast
        //let cell = collectionView.dequeueReusableCell(withReuseIdentifier: contentCellIdentifier,
                                                     // for: indexPath) as! ContentCollectionViewCell
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentCollectionViewCell", for: indexPath as IndexPath) as! ContentCollectionViewCell
        if indexPath.section % 2 != 0 {
            cell.backgroundColor = UIColor(white: 242/255.0, alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor.white
        }
        if indexPath.section == 0 {
            cell.backgroundColor = UIColor.lightGray
            
        }
        
        cell.contentLabel.textColor = .black
        let b =  arry2[indexPath.section]
        let a =  b[indexPath.row]
        let stringRepresentation = a.joined(separator:"\n") // "1-2-3"
        
        //        print(a)
        //        print("====\(b)===")
        cell.contentLabel.text = "\(stringRepresentation)"
        
        return cell
    }
    
}

// MARK: - UICollectionViewDelegate
extension CollectionViewController: UICollectionViewDelegate {
    
}
