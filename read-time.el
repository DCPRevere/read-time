(defun read-time
    (from to)

  (interactive "r")

  (if (use-region-p)
      (let ((words (count-words from to)))
        (let ((secs (/ words 3)))
          (message (format "%d m %d s" (/ secs 60) (% secs 60)))))))
