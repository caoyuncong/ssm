package ssm.model;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.EqualsAndHashCode;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Student extends BaseModel { // 1 端
    private Integer id;
    private String name;
    private String gender;

    private List<Course> courses; // 多端
}