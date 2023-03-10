;;; xah-fly-keys-layer-better-place.el --- Auto activate command or insert mode -*- lexical-binding: t -*-

;; Copyright (C) 2021, 2022  Free Software Foundation, Inc.

;; Author: Payard Clément <payard.clement63@gmail.com>
;; Maintainer: Payard Clément <payard.clement63@gmail.com>
;; Created: 2022
;; Version: 0.1
;; Package-Requires: ((emacs "27.1") (xah-fly-keys-layer "0.1"))

;; This file is part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
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

;; This part of the package is made so that the user can make some key modifications + modifications to relieve the pinky
;;; Code:

(defvar xah-fly-keys-layer-better-place-isearch-forward nil "If t, switch
`isearch-forward' with `xah-goto-matching-bracket'")

;; define a variable only if the key is remap
(defvar xah-fly-keys-layer-better-place-isearch-forward-key
  (if xah-fly-keys-layer-better-place-isearch-forward
      "m"
    "b"
    )
  "Where is the function to search in a file")

(when xah-fly-keys-layer-better-place-isearch-forward
  (xah-fly-keys-layer-add-keys-to-keymap 'xah-fly-command-map "b"
					      'xah-forward-right-bracket)
  (xah-fly-keys-layer-add-keys-to-keymap
   'xah-fly-command-map xah-fly-keys-layer-better-place-isearch-forward-key
   'isearch-forward))

;; to relieve the pinky.
(defvar xah-fly-keys-layer-better-place-for-pinky-parens nil "If t, switch
`xah-forward-right-bracket', `xah-backward-left-bracket' and `xah-goto-matching-bracket'")

(when xah-fly-keys-layer-better-place-for-pinky-parens
  (xah-fly-keys-layer-add-keys-to-keymap 'xah-fly-command-map "v"
					      'xah-forward-right-bracket)
  (xah-fly-keys-layer-add-keys-to-keymap 'xah-fly-command-map "z"
					      'xah-backward-left-bracket)
  (xah-fly-keys-layer-add-keys-to-keymap 'xah-fly-command-map "b"
					      'xah-goto-matching-bracket))

(defvar xah-fly-keys-layer-better-place-for-pinky-block nil "If t, switch
`xah-end-of-line-or-block' and `xah-beginning-of-line-or-block'")

(when xah-fly-keys-layer-better-place-for-pinky-block
  (xah-fly-keys-layer-add-keys-to-keymap 'xah-fly-command-map "d"
					      'xah-end-of-line-or-block)
  (xah-fly-keys-layer-add-keys-to-keymap 'xah-fly-command-map "s"
					 'xah-beginning-of-line-or-block))

(provide 'xah-fly-keys-layer-better-place)
;;; xah-fly-keys-layer-better-place.el ends here
