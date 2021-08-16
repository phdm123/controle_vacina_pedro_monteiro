package br.com.opt2.controle_vacina.resources;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.opt2.controle_vacina.domain.Pessoa;
import br.com.opt2.controle_vacina.service.PessoaService;

@RestController
@RequestMapping("/api/v1/pessoas")
public class PessoaResource {
	@Autowired
	private PessoaService pessoaService;
	
	@PostMapping
	public Pessoa save(@RequestBody Pessoa pessoa) {
		return pessoaService.save(pessoa);
	}
	
	@GetMapping
	public List<Pessoa> findAll(){
		return pessoaService.findAll();
	}
	
	@GetMapping(path = {"/{cpf}"})
	public List<Pessoa> findBycpf(@PathVariable("cpf") Long cpf) {
		return pessoaService.findBycpf(cpf);
	}
	
	@GetMapping(path = {"/{nome}"})
	public List<Pessoa> findByNome(@PathVariable("nome") String nome) {
		return pessoaService.findByNome(nome);
	}
	
	@DeleteMapping(path = {"/{cpf}"})
	public void deleteBycpf(@PathVariable("cpf") Long cpf) {
		pessoaService.deleteBycpf(cpf);
	}
	
	@DeleteMapping(path = {"/{nome}"})
	public void deleteByNome(@PathVariable("nome") String nome) {
		pessoaService.deleteByNome(nome);
	}
}
