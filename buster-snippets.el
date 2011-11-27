;;; buster-snippets.el --- Yasnippets for the Buster javascript testing framework

;; Copyright (C) 2011 Magnar Sveen

;; Author: Magnar Sveen <magnars@gmail.com>
;; Keywords: snippets

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Yasnippets for the Buster javascript testing framework
;;
;; Common snippets
;;
;;     tc => new testCase (one for node, browser and node+browser)
;;     tt => additional test
;;     cx => nested context
;;     su => setup method
;;     td => teardown method
;;
;; Assert and refute snippets follow a common pattern. They start with `as` or `re`
;; followed by a mnemonic shortcut. Most are simply the 'initials' of the method name, but
;; the best shortcuts are saved for the most common assertions.
;;
;;     ase - assert.equals
;;     asm - assert.match
;;     ass - assert.same
;;     asx - assert.exception
;;     asd - assert.defined
;;     ast - assert.threw
;;     asat - assert.alwaysThrew
;;     asin - assert.isNull
;;     asio - assert.isObject
;;     asto - assert.typeOf
;;     ascn - assert.className
;;     astn - assert.tagName
;;
;; Buster also includes Sinon and its assertions:
;;
;;     asc - assert.called
;;     asc1 - assert.calledOnce
;;     asc2 - assert.calledTwice
;;     asc3 - assert.calledThrice
;;     ascw - assert.calledWith
;;     ascc - assert.callCount
;;     asco - assert.callOrder
;;     asco - assert.calledOn
;;     asaco - assert.alwaysCalledOn
;;     asacw - assert.alwaysCalledWith
;;     asacwe - assert.alwaysCalledWithExactly
;;     ascwe - assert.calledWithExactly
;;
;; Refutations mirrors assertions exactly, except that they start with `re` instead of
;; `as`. It is the beautiful symmetry of the buster assertions package.

;; Installation

;; If you haven't, install [yasnippet](http://capitaomorte.github.com/yasnippet/)
;; then install buster-snippets like so:
;;
;;     git submodule add git@github.com:magnars/buster-snippets.el.git site-lisp/buster-snippets
;;
;; Then require buster-snippets at some point after yasnippet.
;;
;;     (require 'buster-snippets)

;;; Code:

(require 'buster-snippet-helpers)

;; Find buster-snippets root directory
(setq buster-snippets-root (file-name-directory
                            (or (buffer-file-name) load-file-name)))

;; Load snippets
(yas/load-directory (expand-file-name "snippets" buster-snippets-root))

(provide 'buster-snippets)