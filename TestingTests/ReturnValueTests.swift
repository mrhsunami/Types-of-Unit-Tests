// Copyright (c) 2017 Lighthouse Labs. All rights reserved.
// 
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import XCTest
@testable import Testing

class ReturnValueTests: XCTestCase {
  
  var canadianizer: Canadianizer!
  
  override func setUp() {
    super.setUp()
    
    canadianizer = Canadianizer()
  }
    
  func test_canadianized_GivenANormalWord_ShouldReturnThatWord() {
    let input = "car"
    let expectedOutput = input
    XCTAssertEqual(canadianizer.canadianize(string: input), expectedOutput)
  }
  
  func test_canadianized_GivenACanadianWord_ShouldReturnThatWordCanadianized() {
    let input = "touque"
    let expectedOutput = "touque, eh?"
    XCTAssertEqual(canadianizer.canadianize(string: input), expectedOutput)
  }
}
