(defvar gian/tiling-window-manager-regexp
  "Regular expresion to tiling window managers that I might use."
  (regexp-opt '("stumpwm")))

(defmacro gian/with-desktop-session (&rest body)
  (declare (indent 0))
  `(when-let ((session (getenv "DESKTOP_SESSION"))
              ((not (string-match-p session gian/tiling-window-manager-regexp))))
     ,@body))
