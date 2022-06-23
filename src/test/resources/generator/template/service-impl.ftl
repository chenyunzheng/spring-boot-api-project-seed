package ${basePackage}.service.impl;

import ${basePackage}.mapper.${modelNameUpperCamel}Mapper;
import ${basePackage}.model.${modelNameUpperCamel};
import ${basePackage}.service.${modelNameUpperCamel}Service;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


/**
* @author Created by ${author}
* @date ${date}
*/
@Service
@Transactional
public class ${modelNameUpperCamel}ServiceImpl implements ${modelNameUpperCamel}Service {

    @Resource
    private ${modelNameUpperCamel}Mapper ${modelNameLowerCamel}Mapper;

    @Override
    public void save(${modelNameUpperCamel} model) {
        ${modelNameLowerCamel}Mapper.insert(model);
    }

    @Override
    public void deleteById(Integer id) {
        ${modelNameLowerCamel}Mapper.deleteByPrimaryKey(id);
    }

    @Override
    public void updateById(${modelNameUpperCamel} model) {
        ${modelNameLowerCamel}Mapper.updateByPrimaryKey(model);
    }

    @Override
    public ${modelNameUpperCamel} findById(Integer id) {
        return ${modelNameLowerCamel}Mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<${modelNameUpperCamel}> findAll() {
        return ${modelNameLowerCamel}Mapper.selectAll();
    }

}
