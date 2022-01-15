
(defun is-linux()
  (when (equal system-type 'gnu/linux)
    t))

(defun is-mac()
  (when (equal system-type 'darwin)
    t))

(defun is-windows()
  (when (equal system-type 'windows-nt)
    t))

(defun is-android()
      (string-suffix-p "Android" (string-trim (shell-command-to-string "uname -a"))))
