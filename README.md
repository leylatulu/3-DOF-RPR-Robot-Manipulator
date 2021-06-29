# 3-DOF RPR MANIPULATOR

![Alt Text](https://user-images.githubusercontent.com/53316818/123525052-e51a8d00-d6d6-11eb-9e0f-c7f67e5cdfba.gif?fit=scale) 

## Coordinate Placement
<p align="center"> 
    <img width="370" alt="3DOF_rpr_manipulator" src="https://user-images.githubusercontent.com/53316818/123004129-e1c49000-d3bc-11eb-8a35-95c60eaf48f4.png">&nbsp;&nbsp;&nbsp;&nbsp;
    <img width="400" alt="koordinat_rpr" src="https://user-images.githubusercontent.com/53316818/123525526-003acc00-d6da-11eb-8c9e-e189a272c8fd.png">
</p>
<br>

## DH Parameters
|                                           Denavit Hartenberg Parameters                                     |
|-------------------------------------------------------------------------------------------------------------| 
|a(i)     =  Distance measured from Z(i) axis to Z(i+1) axis and in the direction of X(i) axis                |
|alpha(i) =  Angle measured around the X(i) axis from the Z(i) axis to the Z(i+1) axis                        |
|d(i)     =  The distance from the X(i-1) axis to the X(i) axis and measured in the direction of the Z(i) axis|
|theta(i) =  Angle measured around the Z(i) axis from the X(i-1) axis to the X(i) axis                        |

<br>
<p align="left">  
    <img width="508" alt="DH_Matrix" src="https://user-images.githubusercontent.com/53316818/123156950-9c629a00-d472-11eb-953f-3cb5e9278483.png">
</p>

## Calculation Of Transformation Matrix
<p align="center">     
    <img width="801" alt="transformation_matrix" src="https://user-images.githubusercontent.com/53316818/123157076-c6b45780-d472-11eb-9428-3cbc7421b3f9.png">
</p>

## Calculation Of Forward Kinematics
<p align="center"> 
    <img width="223" alt="ForwardT" src="https://user-images.githubusercontent.com/53316818/123157039-ba2fff00-d472-11eb-920f-1de7155f3c17.png">
</p>

## Calculation Of Inverse Kinematics 
<p align="center"> 
    <img width="355" alt="T04" src="https://user-images.githubusercontent.com/53316818/123157145-d6cc3700-d472-11eb-96fb-c294258c2963.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img width="344" alt="T_denklem" src="https://user-images.githubusercontent.com/53316818/123157152-d7fd6400-d472-11eb-923c-6d8cdf0ff1d6.png">
</p>


## Calculation Of Joint Variables
<p align="center"> 
    <img width="500" alt="theta1" src="https://user-images.githubusercontent.com/53316818/123157090-c9af4800-d472-11eb-85bf-8a73c85c2d38.png">
</p>

<br>
<p align="center"> 
    <img width="120" alt="d2" src="https://user-images.githubusercontent.com/53316818/123157135-d5027380-d472-11eb-83c4-198c7302d9bf.png">
</p>

<p align="center"> 
    <img width="580" alt="theta3" src="https://user-images.githubusercontent.com/53316818/123157125-d2a01980-d472-11eb-8286-64cd6a5a8f19.png">
</p>

## Authors
* **[Leyla Tülü](https://github.com/leylatulu)**

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details.


The under construction...
