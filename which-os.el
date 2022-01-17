;;; which-os.el --- helper functions for cross platform emacs configuration

;; Author: Mikko Kolehmainen
;; Version: 0.1
;; Keywords: cross platform, system-type
;; URL: https://github.com/kolemikko/which-os

;;; Commentary:
;; This package includes selection of helper functions to work with cross platform emacs configurations

(defun is-linux()
  (when (equal system-type 'gnu/linux)
    t))

(defun is-mac()
  (when (equal system-type 'darwin)
    t))

(defun is-windows()
  (when (equal system-type 'windows-nt)
    t))

(defun is-lsw()
  (when (equal system-type 'gnu/linux)
      (string-suffix-p "Microsoft" (string-trim (shell-command-to-string "uname -a"))
		       t)))

(defun is-android()
      (string-suffix-p "Android" (string-trim (shell-command-to-string "uname -a"))))

