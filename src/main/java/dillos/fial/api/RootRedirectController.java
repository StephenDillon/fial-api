package dillos.fial.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootRedirectController {

	@GetMapping("/")
	public String redirectToSwagger() {
		return "redirect:/swagger-ui/index.html";
	}

}
