??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-0-g919f693420e8??
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
?
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namebatch_normalization/gamma
?
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
: *
dtype0
?
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namebatch_normalization/beta
?
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
: *
dtype0
?
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!batch_normalization/moving_mean
?
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
: *
dtype0
?
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization/moving_variance
?
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_1/gamma
?
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_1/beta
?
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_1/moving_mean
?
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_1/moving_variance
?
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@?*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_2/gamma
?
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_2/beta
?
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_2/moving_mean
?
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_2/moving_variance
?
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:?*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?0*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?0*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:0*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m
?
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
: *
dtype0
?
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/batch_normalization/gamma/m
?
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
: *
dtype0
?
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/batch_normalization/beta/m
?
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/m
?
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_1/gamma/m
?
6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_1/beta/m
?
5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_2/kernel/m
?
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_2/bias/m
z
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_2/gamma/m
?
6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_2/beta/m
?
5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?0*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	?0*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:0*
dtype0
?
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v
?
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
dtype0
?
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/batch_normalization/gamma/v
?
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
: *
dtype0
?
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/batch_normalization/beta/v
?
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/v
?
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_1/gamma/v
?
6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_1/beta/v
?
5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_2/kernel/v
?
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_2/bias/v
z
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_2/gamma/v
?
6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_2/beta/v
?
5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?0*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	?0*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:0*
dtype0

NoOpNoOp
?i
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?i
value?iB?i B?i
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	optimizer
regularization_losses
	variables
trainable_variables
		keras_api


signatures
 
 
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
layer-8
layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-6
layer-17
regularization_losses
	variables
trainable_variables
 	keras_api
R
!regularization_losses
"	variables
#trainable_variables
$	keras_api
?
%iter

&beta_1

'beta_2
	(decay
)learning_rate*m?+m?,m?-m?0m?1m?2m?3m?6m?7m?8m?9m?<m?=m?*v?+v?,v?-v?0v?1v?2v?3v?6v?7v?8v?9v?<v?=v?
 
?
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19
f
*0
+1
,2
-3
04
15
26
37
68
79
810
911
<12
=13
?
regularization_losses
>non_trainable_variables
	variables
?metrics
@layer_regularization_losses
trainable_variables

Alayers
Blayer_metrics
 
 
h

*kernel
+bias
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
?
Gaxis
	,gamma
-beta
.moving_mean
/moving_variance
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
R
Lregularization_losses
M	variables
Ntrainable_variables
O	keras_api
R
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
R
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
h

0kernel
1bias
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
?
\axis
	2gamma
3beta
4moving_mean
5moving_variance
]regularization_losses
^	variables
_trainable_variables
`	keras_api
R
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
R
eregularization_losses
f	variables
gtrainable_variables
h	keras_api
R
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
h

6kernel
7bias
mregularization_losses
n	variables
otrainable_variables
p	keras_api
?
qaxis
	8gamma
9beta
:moving_mean
;moving_variance
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
R
vregularization_losses
w	variables
xtrainable_variables
y	keras_api
R
zregularization_losses
{	variables
|trainable_variables
}	keras_api
T
~regularization_losses
	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

<kernel
=bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
?
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19
f
*0
+1
,2
-3
04
15
26
37
68
79
810
911
<12
=13
?
regularization_losses
?non_trainable_variables
	variables
?metrics
 ?layer_regularization_losses
trainable_variables
?layers
?layer_metrics
 
 
 
?
!regularization_losses
?non_trainable_variables
"	variables
?metrics
 ?layer_regularization_losses
#trainable_variables
?layers
?layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEbatch_normalization/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEbatch_normalization/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEbatch_normalization/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#batch_normalization/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_1/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEbatch_normalization_1/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_1/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_1/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_2/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_2/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_2/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_2/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_2/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUE
dense/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
*
.0
/1
42
53
:4
;5

?0
 

0
1
2
3
 
 

*0
+1

*0
+1
?
Cregularization_losses
?non_trainable_variables
D	variables
?metrics
 ?layer_regularization_losses
Etrainable_variables
?layers
?layer_metrics
 
 

,0
-1
.2
/3

,0
-1
?
Hregularization_losses
?non_trainable_variables
I	variables
?metrics
 ?layer_regularization_losses
Jtrainable_variables
?layers
?layer_metrics
 
 
 
?
Lregularization_losses
?non_trainable_variables
M	variables
?metrics
 ?layer_regularization_losses
Ntrainable_variables
?layers
?layer_metrics
 
 
 
?
Pregularization_losses
?non_trainable_variables
Q	variables
?metrics
 ?layer_regularization_losses
Rtrainable_variables
?layers
?layer_metrics
 
 
 
?
Tregularization_losses
?non_trainable_variables
U	variables
?metrics
 ?layer_regularization_losses
Vtrainable_variables
?layers
?layer_metrics
 

00
11

00
11
?
Xregularization_losses
?non_trainable_variables
Y	variables
?metrics
 ?layer_regularization_losses
Ztrainable_variables
?layers
?layer_metrics
 
 

20
31
42
53

20
31
?
]regularization_losses
?non_trainable_variables
^	variables
?metrics
 ?layer_regularization_losses
_trainable_variables
?layers
?layer_metrics
 
 
 
?
aregularization_losses
?non_trainable_variables
b	variables
?metrics
 ?layer_regularization_losses
ctrainable_variables
?layers
?layer_metrics
 
 
 
?
eregularization_losses
?non_trainable_variables
f	variables
?metrics
 ?layer_regularization_losses
gtrainable_variables
?layers
?layer_metrics
 
 
 
?
iregularization_losses
?non_trainable_variables
j	variables
?metrics
 ?layer_regularization_losses
ktrainable_variables
?layers
?layer_metrics
 

60
71

60
71
?
mregularization_losses
?non_trainable_variables
n	variables
?metrics
 ?layer_regularization_losses
otrainable_variables
?layers
?layer_metrics
 
 

80
91
:2
;3

80
91
?
rregularization_losses
?non_trainable_variables
s	variables
?metrics
 ?layer_regularization_losses
ttrainable_variables
?layers
?layer_metrics
 
 
 
?
vregularization_losses
?non_trainable_variables
w	variables
?metrics
 ?layer_regularization_losses
xtrainable_variables
?layers
?layer_metrics
 
 
 
?
zregularization_losses
?non_trainable_variables
{	variables
?metrics
 ?layer_regularization_losses
|trainable_variables
?layers
?layer_metrics
 
 
 
?
~regularization_losses
?non_trainable_variables
	variables
?metrics
 ?layer_regularization_losses
?trainable_variables
?layers
?layer_metrics
 
 
 
?
?regularization_losses
?non_trainable_variables
?	variables
?metrics
 ?layer_regularization_losses
?trainable_variables
?layers
?layer_metrics
 

<0
=1

<0
=1
?
?regularization_losses
?non_trainable_variables
?	variables
?metrics
 ?layer_regularization_losses
?trainable_variables
?layers
?layer_metrics
*
.0
/1
42
53
:4
;5
 
 
?
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
 
 
 
 
 

.0
/1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

40
51
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

:0
;1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
lj
VARIABLE_VALUEAdam/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/batch_normalization/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/batch_normalization/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_1/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d_1/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/batch_normalization_1/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_2/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_2/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!Adam/batch_normalization_2/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/dense/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/batch_normalization/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/batch_normalization/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_1/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d_1/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/batch_normalization_1/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_2/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_2/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!Adam/batch_normalization_2/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/dense/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????>/*
dtype0*$
shape:?????????>/
?
serving_default_input_2Placeholder*/
_output_shapes
:?????????>/*
dtype0*$
shape:?????????>/
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2conv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancedense/kernel
dense/bias*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_8919
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*D
Tin=
;29	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_10492
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_2/kernelconv2d_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancedense/kernel
dense/biastotalcountAdam/conv2d/kernel/mAdam/conv2d/bias/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/dense/kernel/mAdam/dense/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/dense/kernel/vAdam/dense/bias/v*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_10667??
?
j
@__inference_lambda_layer_call_and_return_conditional_losses_8450

inputs
inputs_1
identityU
subSubinputsinputs_1*
T0*'
_output_shapes
:?????????02
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????02
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????0:?????????0:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7636

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????
@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_10293

inputs
unknown:	?0
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_77182
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_model_1_layer_call_fn_8496
input_1
input_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?0

unknown_18:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_84532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_1:XT
/
_output_shapes
:?????????>/
!
_user_specified_name	input_2
?
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7699

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_10030

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10262

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_8026

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<- : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_1_layer_call_fn_10052

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_76362
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????
@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?Q
?	
?__inference_model_layer_call_and_return_conditional_losses_8155

inputs%
conv2d_8097: 
conv2d_8099: &
batch_normalization_8102: &
batch_normalization_8104: &
batch_normalization_8106: &
batch_normalization_8108: '
conv2d_1_8114: @
conv2d_1_8116:@(
batch_normalization_1_8119:@(
batch_normalization_1_8121:@(
batch_normalization_1_8123:@(
batch_normalization_1_8125:@(
conv2d_2_8131:@?
conv2d_2_8133:	?)
batch_normalization_2_8136:	?)
batch_normalization_2_8138:	?)
batch_normalization_2_8140:	?)
batch_normalization_2_8142:	?

dense_8149:	?0

dense_8151:0
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8097conv2d_8099*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_75222 
conv2d/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_8102batch_normalization_8104batch_normalization_8106batch_normalization_8108*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_80262-
+batch_normalization/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_75602
activation/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_79842!
dropout/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_75732
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_8114conv2d_1_8116*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_75852"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_8119batch_normalization_1_8121batch_normalization_1_8123batch_normalization_1_8125*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_79382/
-batch_normalization_1/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_76232
activation_1/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_78962#
!dropout_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_76362!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_8131conv2d_2_8133*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_76482"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_8136batch_normalization_2_8138batch_normalization_2_8140batch_normalization_2_8142*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_78502/
-batch_normalization_2/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_76862
activation_2/PartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_78082#
!dropout_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_76992!
max_pooling2d_2/PartitionedCall?
(global_average_pooling2d/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_77062*
(global_average_pooling2d/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0
dense_8149
dense_8151*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_77182
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identity?
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10062

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????
@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_8919
input_1
input_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?0

unknown_18:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_70372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_1:XT
/
_output_shapes
:?????????>/
!
_user_specified_name	input_2
?
_
&__inference_dropout_layer_call_fn_9825

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_79842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9969

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_7896

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
o
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_10278

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7399

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
2__inference_batch_normalization_layer_call_fn_9720

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_75452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<- : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7172

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_7693

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10187

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Q
%__inference_lambda_layer_call_fn_9634
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_85202
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????0:?????????0:Q M
'
_output_shapes
:?????????0
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????0
"
_user_specified_name
inputs/1
?
?
%__inference_conv2d_layer_call_fn_9671

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_75222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>/: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?
?
&__inference_model_1_layer_call_fn_9011
inputs_0
inputs_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?0

unknown_18:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_86402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????>/
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????>/
"
_user_specified_name
inputs/1
?
E
)__inference_activation_layer_call_fn_9810

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_75602
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_7630

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
4__inference_batch_normalization_1_layer_call_fn_9894

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_72072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
H
,__inference_activation_1_layer_call_fn_10010

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_76232
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
n
R__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_7491

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9769

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
@__inference_conv2d_layer_call_and_return_conditional_losses_9681

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?l
?
?__inference_model_layer_call_and_return_conditional_losses_9520

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 9
+batch_normalization_readvariableop_resource: ;
-batch_normalization_readvariableop_1_resource: J
<batch_normalization_fusedbatchnormv3_readvariableop_resource: L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@;
-batch_normalization_1_readvariableop_resource:@=
/batch_normalization_1_readvariableop_1_resource:@L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@?7
(conv2d_2_biasadd_readvariableop_resource:	?<
-batch_normalization_2_readvariableop_resource:	?>
/batch_normalization_2_readvariableop_1_resource:	?M
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?7
$dense_matmul_readvariableop_resource:	?03
%dense_biasadd_readvariableop_resource:0
identity??3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2
conv2d/BiasAdd?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype02$
"batch_normalization/ReadVariableOp?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype02&
$batch_normalization/ReadVariableOp_1?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
is_training( 2&
$batch_normalization/FusedBatchNormV3?
activation/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<- 2
activation/Relu?
dropout/IdentityIdentityactivation/Relu:activations:0*
T0*/
_output_shapes
:?????????<- 2
dropout/Identity?
max_pooling2d/MaxPoolMaxPooldropout/Identity:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1/BiasAdd?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOp?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_1/ReadVariableOp_1?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3?
activation_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
activation_1/Relu?
dropout_1/IdentityIdentityactivation_1/Relu:activations:0*
T0*/
_output_shapes
:?????????@2
dropout_1/Identity?
max_pooling2d_1/MaxPoolMaxPooldropout_1/Identity:output:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_2/BiasAdd?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3?
activation_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
activation_2/Relu?
dropout_2/IdentityIdentityactivation_2/Relu:activations:0*
T0*0
_output_shapes
:??????????2
dropout_2/Identity?
max_pooling2d_2/MaxPoolMaxPooldropout_2/Identity:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool?
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indices?
global_average_pooling2d/MeanMean max_pooling2d_2/MaxPool:output:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
global_average_pooling2d/Mean?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul&global_average_pooling2d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
dense/BiasAddq
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identity?
NoOpNoOp4^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?
?
&__inference_model_1_layer_call_fn_8729
input_1
input_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?0

unknown_18:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_86402
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_1:XT
/
_output_shapes
:?????????>/
!
_user_specified_name	input_2
?
?
5__inference_batch_normalization_2_layer_call_fn_10120

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_76712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_activation_2_layer_call_fn_10210

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_76862
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_activation_layer_call_and_return_conditional_losses_9815

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????<- 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????<- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
??
?
?__inference_model_layer_call_and_return_conditional_losses_9622

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: 9
+batch_normalization_readvariableop_resource: ;
-batch_normalization_readvariableop_1_resource: J
<batch_normalization_fusedbatchnormv3_readvariableop_resource: L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@;
-batch_normalization_1_readvariableop_resource:@=
/batch_normalization_1_readvariableop_1_resource:@L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@?7
(conv2d_2_biasadd_readvariableop_resource:	?<
-batch_normalization_2_readvariableop_resource:	?>
/batch_normalization_2_readvariableop_1_resource:	?M
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?7
$dense_matmul_readvariableop_resource:	?03
%dense_biasadd_readvariableop_resource:0
identity??"batch_normalization/AssignNewValue?$batch_normalization/AssignNewValue_1?3batch_normalization/FusedBatchNormV3/ReadVariableOp?5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?"batch_normalization/ReadVariableOp?$batch_normalization/ReadVariableOp_1?$batch_normalization_1/AssignNewValue?&batch_normalization_1/AssignNewValue_1?5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_1/ReadVariableOp?&batch_normalization_1/ReadVariableOp_1?$batch_normalization_2/AssignNewValue?&batch_normalization_2/AssignNewValue_1?5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2
conv2d/BiasAdd?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype02$
"batch_normalization/ReadVariableOp?
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype02&
$batch_normalization/ReadVariableOp_1?
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp?
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2&
$batch_normalization/FusedBatchNormV3?
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue?
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02&
$batch_normalization/AssignNewValue_1?
activation/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<- 2
activation/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/dropout/Const?
dropout/dropout/MulMulactivation/Relu:activations:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????<- 2
dropout/dropout/Mul{
dropout/dropout/ShapeShapeactivation/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????<- *
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<- 2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<- 2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<- 2
dropout/dropout/Mul_1?
max_pooling2d/MaxPoolMaxPooldropout/dropout/Mul_1:z:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1/BiasAdd?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOp?
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_1/ReadVariableOp_1?
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_1/FusedBatchNormV3?
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue?
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1?
activation_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
activation_1/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulactivation_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShapeactivation_1/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_1/dropout/Mul_1?
max_pooling2d_1/MaxPoolMaxPooldropout_1/dropout/Mul_1:z:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_2/BiasAdd?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_2/BiasAdd:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_2/FusedBatchNormV3?
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_2/AssignNewValue?
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_2/AssignNewValue_1?
activation_2/ReluRelu*batch_normalization_2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
activation_2/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMulactivation_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mul?
dropout_2/dropout/ShapeShapeactivation_2/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mul_1?
max_pooling2d_2/MaxPoolMaxPooldropout_2/dropout/Mul_1:z:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool?
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indices?
global_average_pooling2d/MeanMean max_pooling2d_2/MaxPool:output:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
global_average_pooling2d/Mean?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul&global_average_pooling2d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
dense/BiasAddq
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identity?
NoOpNoOp#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?
?
A__inference_model_1_layer_call_and_return_conditional_losses_8865
input_1
input_2$

model_8801: 

model_8803: 

model_8805: 

model_8807: 

model_8809: 

model_8811: $

model_8813: @

model_8815:@

model_8817:@

model_8819:@

model_8821:@

model_8823:@%

model_8825:@?

model_8827:	?

model_8829:	?

model_8831:	?

model_8833:	?

model_8835:	?

model_8837:	?0

model_8839:0
identity??model/StatefulPartitionedCall?model/StatefulPartitionedCall_1?
model/StatefulPartitionedCallStatefulPartitionedCallinput_1
model_8801
model_8803
model_8805
model_8807
model_8809
model_8811
model_8813
model_8815
model_8817
model_8819
model_8821
model_8823
model_8825
model_8827
model_8829
model_8831
model_8833
model_8835
model_8837
model_8839* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_81552
model/StatefulPartitionedCall?
model/StatefulPartitionedCall_1StatefulPartitionedCallinput_2
model_8801
model_8803
model_8805
model_8807
model_8809
model_8811
model_8813
model_8815
model_8817
model_8819
model_8821
model_8823
model_8825
model_8827
model_8829
model_8831
model_8833
model_8835
model_8837
model_8839^model/StatefulPartitionedCall* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_81552!
model/StatefulPartitionedCall_1?
lambda/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_85202
lambda/PartitionedCallz
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_1:XT
/
_output_shapes
:?????????>/
!
_user_specified_name	input_2
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7671

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
@__inference_lambda_layer_call_and_return_conditional_losses_9662
inputs_0
inputs_1
identityW
subSubinputs_0inputs_1*
T0*'
_output_shapes
:?????????02
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????02
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????0:?????????0:Q M
'
_output_shapes
:?????????0
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????0
"
_user_specified_name
inputs/1
?
?
4__inference_batch_normalization_1_layer_call_fn_9920

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_76082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
F__inference_activation_2_layer_call_and_return_conditional_losses_7686

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_7103

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
b
)__inference_dropout_2_layer_call_fn_10225

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_78082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_2_layer_call_fn_10252

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_76992
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_2_layer_call_fn_10071

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_76482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????
@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
@
 
_user_specified_nameinputs
?
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9857

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_7059

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?Q
?	
?__inference_model_layer_call_and_return_conditional_losses_8365
input_3%
conv2d_8307: 
conv2d_8309: &
batch_normalization_8312: &
batch_normalization_8314: &
batch_normalization_8316: &
batch_normalization_8318: '
conv2d_1_8324: @
conv2d_1_8326:@(
batch_normalization_1_8329:@(
batch_normalization_1_8331:@(
batch_normalization_1_8333:@(
batch_normalization_1_8335:@(
conv2d_2_8341:@?
conv2d_2_8343:	?)
batch_normalization_2_8346:	?)
batch_normalization_2_8348:	?)
batch_normalization_2_8350:	?)
batch_normalization_2_8352:	?

dense_8359:	?0

dense_8361:0
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_8307conv2d_8309*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_75222 
conv2d/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_8312batch_normalization_8314batch_normalization_8316batch_normalization_8318*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_80262-
+batch_normalization/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_75602
activation/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_79842!
dropout/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_75732
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_8324conv2d_1_8326*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_75852"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_8329batch_normalization_1_8331batch_normalization_1_8333batch_normalization_1_8335*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_79382/
-batch_normalization_1/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_76232
activation_1/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall%activation_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_78962#
!dropout_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_76362!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_8341conv2d_2_8343*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_76482"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_8346batch_normalization_2_8348batch_normalization_2_8350batch_normalization_2_8352*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_78502/
-batch_normalization_2/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_76862
activation_2/PartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_78082#
!dropout_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_76992!
max_pooling2d_2/PartitionedCall?
(global_average_pooling2d/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_77062*
(global_average_pooling2d/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0
dense_8359
dense_8361*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_77182
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identity?
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_3
?
c
G__inference_activation_1_layer_call_and_return_conditional_losses_10015

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_2_layer_call_fn_10107

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_73992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
4__inference_batch_normalization_1_layer_call_fn_9907

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_72512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7585

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
$__inference_model_layer_call_fn_9439

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?0

unknown_18:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_81552
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?
?
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7648

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAddt
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????
@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
@
 
_user_specified_nameinputs
?
E
)__inference_dropout_1_layer_call_fn_10020

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_76302
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7320

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10257

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
o
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_10284

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9987

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10205

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_activation_2_layer_call_and_return_conditional_losses_10215

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
B
&__inference_dropout_layer_call_fn_9820

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_75672
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
E
)__inference_dropout_2_layer_call_fn_10220

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_76932
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
T
8__inference_global_average_pooling2d_layer_call_fn_10272

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_77062
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_10042

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10151

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
T
8__inference_global_average_pooling2d_layer_call_fn_10267

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_74912
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
n
R__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_7706

inputs
identity?
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_2_layer_call_fn_10247

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_74682
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_10081

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAddt
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????
@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
@
 
_user_specified_nameinputs
?
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_10230

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_model_1_layer_call_fn_8965
inputs_0
inputs_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?0

unknown_18:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_84532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????>/
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????>/
"
_user_specified_name
inputs/1
??
?
A__inference_model_1_layer_call_and_return_conditional_losses_9349
inputs_0
inputs_1E
+model_conv2d_conv2d_readvariableop_resource: :
,model_conv2d_biasadd_readvariableop_resource: ?
1model_batch_normalization_readvariableop_resource: A
3model_batch_normalization_readvariableop_1_resource: P
Bmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource: R
Dmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: G
-model_conv2d_1_conv2d_readvariableop_resource: @<
.model_conv2d_1_biasadd_readvariableop_resource:@A
3model_batch_normalization_1_readvariableop_resource:@C
5model_batch_normalization_1_readvariableop_1_resource:@R
Dmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@T
Fmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@H
-model_conv2d_2_conv2d_readvariableop_resource:@?=
.model_conv2d_2_biasadd_readvariableop_resource:	?B
3model_batch_normalization_2_readvariableop_resource:	?D
5model_batch_normalization_2_readvariableop_1_resource:	?S
Dmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?U
Fmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?=
*model_dense_matmul_readvariableop_resource:	?09
+model_dense_biasadd_readvariableop_resource:0
identity??(model/batch_normalization/AssignNewValue?*model/batch_normalization/AssignNewValue_1?*model/batch_normalization/AssignNewValue_2?*model/batch_normalization/AssignNewValue_3?9model/batch_normalization/FusedBatchNormV3/ReadVariableOp?;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1?(model/batch_normalization/ReadVariableOp?*model/batch_normalization/ReadVariableOp_1?*model/batch_normalization/ReadVariableOp_2?*model/batch_normalization/ReadVariableOp_3?*model/batch_normalization_1/AssignNewValue?,model/batch_normalization_1/AssignNewValue_1?,model/batch_normalization_1/AssignNewValue_2?,model/batch_normalization_1/AssignNewValue_3?;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp??model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?*model/batch_normalization_1/ReadVariableOp?,model/batch_normalization_1/ReadVariableOp_1?,model/batch_normalization_1/ReadVariableOp_2?,model/batch_normalization_1/ReadVariableOp_3?*model/batch_normalization_2/AssignNewValue?,model/batch_normalization_2/AssignNewValue_1?,model/batch_normalization_2/AssignNewValue_2?,model/batch_normalization_2/AssignNewValue_3?;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp??model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?*model/batch_normalization_2/ReadVariableOp?,model/batch_normalization_2/ReadVariableOp_1?,model/batch_normalization_2/ReadVariableOp_2?,model/batch_normalization_2/ReadVariableOp_3?#model/conv2d/BiasAdd/ReadVariableOp?%model/conv2d/BiasAdd_1/ReadVariableOp?"model/conv2d/Conv2D/ReadVariableOp?$model/conv2d/Conv2D_1/ReadVariableOp?%model/conv2d_1/BiasAdd/ReadVariableOp?'model/conv2d_1/BiasAdd_1/ReadVariableOp?$model/conv2d_1/Conv2D/ReadVariableOp?&model/conv2d_1/Conv2D_1/ReadVariableOp?%model/conv2d_2/BiasAdd/ReadVariableOp?'model/conv2d_2/BiasAdd_1/ReadVariableOp?$model/conv2d_2/Conv2D/ReadVariableOp?&model/conv2d_2/Conv2D_1/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?$model/dense/BiasAdd_1/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?#model/dense/MatMul_1/ReadVariableOp?
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02$
"model/conv2d/Conv2D/ReadVariableOp?
model/conv2d/Conv2DConv2Dinputs_0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
model/conv2d/Conv2D?
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#model/conv2d/BiasAdd/ReadVariableOp?
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2
model/conv2d/BiasAdd?
(model/batch_normalization/ReadVariableOpReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype02*
(model/batch_normalization/ReadVariableOp?
*model/batch_normalization/ReadVariableOp_1ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*model/batch_normalization/ReadVariableOp_1?
9model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02;
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp?
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
*model/batch_normalization/FusedBatchNormV3FusedBatchNormV3model/conv2d/BiasAdd:output:00model/batch_normalization/ReadVariableOp:value:02model/batch_normalization/ReadVariableOp_1:value:0Amodel/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2,
*model/batch_normalization/FusedBatchNormV3?
(model/batch_normalization/AssignNewValueAssignVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource7model/batch_normalization/FusedBatchNormV3:batch_mean:0:^model/batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02*
(model/batch_normalization/AssignNewValue?
*model/batch_normalization/AssignNewValue_1AssignVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource;model/batch_normalization/FusedBatchNormV3:batch_variance:0<^model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02,
*model/batch_normalization/AssignNewValue_1?
model/activation/ReluRelu.model/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<- 2
model/activation/Relu
model/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
model/dropout/dropout/Const?
model/dropout/dropout/MulMul#model/activation/Relu:activations:0$model/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:?????????<- 2
model/dropout/dropout/Mul?
model/dropout/dropout/ShapeShape#model/activation/Relu:activations:0*
T0*
_output_shapes
:2
model/dropout/dropout/Shape?
2model/dropout/dropout/random_uniform/RandomUniformRandomUniform$model/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????<- *
dtype024
2model/dropout/dropout/random_uniform/RandomUniform?
$model/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2&
$model/dropout/dropout/GreaterEqual/y?
"model/dropout/dropout/GreaterEqualGreaterEqual;model/dropout/dropout/random_uniform/RandomUniform:output:0-model/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<- 2$
"model/dropout/dropout/GreaterEqual?
model/dropout/dropout/CastCast&model/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<- 2
model/dropout/dropout/Cast?
model/dropout/dropout/Mul_1Mulmodel/dropout/dropout/Mul:z:0model/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<- 2
model/dropout/dropout/Mul_1?
model/max_pooling2d/MaxPoolMaxPoolmodel/dropout/dropout/Mul_1:z:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPool?
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02&
$model/conv2d_1/Conv2D/ReadVariableOp?
model/conv2d_1/Conv2DConv2D$model/max_pooling2d/MaxPool:output:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
model/conv2d_1/Conv2D?
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%model/conv2d_1/BiasAdd/ReadVariableOp?
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/conv2d_1/BiasAdd?
*model/batch_normalization_1/ReadVariableOpReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/batch_normalization_1/ReadVariableOp?
,model/batch_normalization_1/ReadVariableOp_1ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02.
,model/batch_normalization_1/ReadVariableOp_1?
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02=
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
,model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3model/conv2d_1/BiasAdd:output:02model/batch_normalization_1/ReadVariableOp:value:04model/batch_normalization_1/ReadVariableOp_1:value:0Cmodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2.
,model/batch_normalization_1/FusedBatchNormV3?
*model/batch_normalization_1/AssignNewValueAssignVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource9model/batch_normalization_1/FusedBatchNormV3:batch_mean:0<^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02,
*model/batch_normalization_1/AssignNewValue?
,model/batch_normalization_1/AssignNewValue_1AssignVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource=model/batch_normalization_1/FusedBatchNormV3:batch_variance:0>^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02.
,model/batch_normalization_1/AssignNewValue_1?
model/activation_1/ReluRelu0model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
model/activation_1/Relu?
model/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
model/dropout_1/dropout/Const?
model/dropout_1/dropout/MulMul%model/activation_1/Relu:activations:0&model/dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
model/dropout_1/dropout/Mul?
model/dropout_1/dropout/ShapeShape%model/activation_1/Relu:activations:0*
T0*
_output_shapes
:2
model/dropout_1/dropout/Shape?
4model/dropout_1/dropout/random_uniform/RandomUniformRandomUniform&model/dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype026
4model/dropout_1/dropout/random_uniform/RandomUniform?
&model/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&model/dropout_1/dropout/GreaterEqual/y?
$model/dropout_1/dropout/GreaterEqualGreaterEqual=model/dropout_1/dropout/random_uniform/RandomUniform:output:0/model/dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2&
$model/dropout_1/dropout/GreaterEqual?
model/dropout_1/dropout/CastCast(model/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
model/dropout_1/dropout/Cast?
model/dropout_1/dropout/Mul_1Mulmodel/dropout_1/dropout/Mul:z:0 model/dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
model/dropout_1/dropout/Mul_1?
model/max_pooling2d_1/MaxPoolMaxPool!model/dropout_1/dropout/Mul_1:z:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_1/MaxPool?
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02&
$model/conv2d_2/Conv2D/ReadVariableOp?
model/conv2d_2/Conv2DConv2D&model/max_pooling2d_1/MaxPool:output:0,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
model/conv2d_2/Conv2D?
%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%model/conv2d_2/BiasAdd/ReadVariableOp?
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2D:output:0-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model/conv2d_2/BiasAdd?
*model/batch_normalization_2/ReadVariableOpReadVariableOp3model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*model/batch_normalization_2/ReadVariableOp?
,model/batch_normalization_2/ReadVariableOp_1ReadVariableOp5model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02.
,model/batch_normalization_2/ReadVariableOp_1?
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
,model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3model/conv2d_2/BiasAdd:output:02model/batch_normalization_2/ReadVariableOp:value:04model/batch_normalization_2/ReadVariableOp_1:value:0Cmodel/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2.
,model/batch_normalization_2/FusedBatchNormV3?
*model/batch_normalization_2/AssignNewValueAssignVariableOpDmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource9model/batch_normalization_2/FusedBatchNormV3:batch_mean:0<^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02,
*model/batch_normalization_2/AssignNewValue?
,model/batch_normalization_2/AssignNewValue_1AssignVariableOpFmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource=model/batch_normalization_2/FusedBatchNormV3:batch_variance:0>^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02.
,model/batch_normalization_2/AssignNewValue_1?
model/activation_2/ReluRelu0model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
model/activation_2/Relu?
model/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
model/dropout_2/dropout/Const?
model/dropout_2/dropout/MulMul%model/activation_2/Relu:activations:0&model/dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
model/dropout_2/dropout/Mul?
model/dropout_2/dropout/ShapeShape%model/activation_2/Relu:activations:0*
T0*
_output_shapes
:2
model/dropout_2/dropout/Shape?
4model/dropout_2/dropout/random_uniform/RandomUniformRandomUniform&model/dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype026
4model/dropout_2/dropout/random_uniform/RandomUniform?
&model/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&model/dropout_2/dropout/GreaterEqual/y?
$model/dropout_2/dropout/GreaterEqualGreaterEqual=model/dropout_2/dropout/random_uniform/RandomUniform:output:0/model/dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2&
$model/dropout_2/dropout/GreaterEqual?
model/dropout_2/dropout/CastCast(model/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
model/dropout_2/dropout/Cast?
model/dropout_2/dropout/Mul_1Mulmodel/dropout_2/dropout/Mul:z:0 model/dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
model/dropout_2/dropout/Mul_1?
model/max_pooling2d_2/MaxPoolMaxPool!model/dropout_2/dropout/Mul_1:z:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_2/MaxPool?
5model/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model/global_average_pooling2d/Mean/reduction_indices?
#model/global_average_pooling2d/MeanMean&model/max_pooling2d_2/MaxPool:output:0>model/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2%
#model/global_average_pooling2d/Mean?
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02#
!model/dense/MatMul/ReadVariableOp?
model/dense/MatMulMatMul,model/global_average_pooling2d/Mean:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model/dense/MatMul?
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02$
"model/dense/BiasAdd/ReadVariableOp?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model/dense/BiasAdd?
$model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02&
$model/conv2d/Conv2D_1/ReadVariableOp?
model/conv2d/Conv2D_1Conv2Dinputs_1,model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
model/conv2d/Conv2D_1?
%model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%model/conv2d/BiasAdd_1/ReadVariableOp?
model/conv2d/BiasAdd_1BiasAddmodel/conv2d/Conv2D_1:output:0-model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2
model/conv2d/BiasAdd_1?
*model/batch_normalization/ReadVariableOp_2ReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype02,
*model/batch_normalization/ReadVariableOp_2?
*model/batch_normalization/ReadVariableOp_3ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*model/batch_normalization/ReadVariableOp_3?
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource)^model/batch_normalization/AssignNewValue*
_output_shapes
: *
dtype02=
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource+^model/batch_normalization/AssignNewValue_1*
_output_shapes
: *
dtype02?
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1?
,model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3model/conv2d/BiasAdd_1:output:02model/batch_normalization/ReadVariableOp_2:value:02model/batch_normalization/ReadVariableOp_3:value:0Cmodel/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Emodel/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2.
,model/batch_normalization/FusedBatchNormV3_1?
*model/batch_normalization/AssignNewValue_2AssignVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource9model/batch_normalization/FusedBatchNormV3_1:batch_mean:0)^model/batch_normalization/AssignNewValue<^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype02,
*model/batch_normalization/AssignNewValue_2?
*model/batch_normalization/AssignNewValue_3AssignVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource=model/batch_normalization/FusedBatchNormV3_1:batch_variance:0+^model/batch_normalization/AssignNewValue_1>^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype02,
*model/batch_normalization/AssignNewValue_3?
model/activation/Relu_1Relu0model/batch_normalization/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:?????????<- 2
model/activation/Relu_1?
model/dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
model/dropout/dropout_1/Const?
model/dropout/dropout_1/MulMul%model/activation/Relu_1:activations:0&model/dropout/dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????<- 2
model/dropout/dropout_1/Mul?
model/dropout/dropout_1/ShapeShape%model/activation/Relu_1:activations:0*
T0*
_output_shapes
:2
model/dropout/dropout_1/Shape?
4model/dropout/dropout_1/random_uniform/RandomUniformRandomUniform&model/dropout/dropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????<- *
dtype026
4model/dropout/dropout_1/random_uniform/RandomUniform?
&model/dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2(
&model/dropout/dropout_1/GreaterEqual/y?
$model/dropout/dropout_1/GreaterEqualGreaterEqual=model/dropout/dropout_1/random_uniform/RandomUniform:output:0/model/dropout/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<- 2&
$model/dropout/dropout_1/GreaterEqual?
model/dropout/dropout_1/CastCast(model/dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<- 2
model/dropout/dropout_1/Cast?
model/dropout/dropout_1/Mul_1Mulmodel/dropout/dropout_1/Mul:z:0 model/dropout/dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????<- 2
model/dropout/dropout_1/Mul_1?
model/max_pooling2d/MaxPool_1MaxPool!model/dropout/dropout_1/Mul_1:z:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPool_1?
&model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02(
&model/conv2d_1/Conv2D_1/ReadVariableOp?
model/conv2d_1/Conv2D_1Conv2D&model/max_pooling2d/MaxPool_1:output:0.model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
model/conv2d_1/Conv2D_1?
'model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model/conv2d_1/BiasAdd_1/ReadVariableOp?
model/conv2d_1/BiasAdd_1BiasAdd model/conv2d_1/Conv2D_1:output:0/model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/conv2d_1/BiasAdd_1?
,model/batch_normalization_1/ReadVariableOp_2ReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02.
,model/batch_normalization_1/ReadVariableOp_2?
,model/batch_normalization_1/ReadVariableOp_3ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02.
,model/batch_normalization_1/ReadVariableOp_3?
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource+^model/batch_normalization_1/AssignNewValue*
_output_shapes
:@*
dtype02?
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource-^model/batch_normalization_1/AssignNewValue_1*
_output_shapes
:@*
dtype02A
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?
.model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3!model/conv2d_1/BiasAdd_1:output:04model/batch_normalization_1/ReadVariableOp_2:value:04model/batch_normalization_1/ReadVariableOp_3:value:0Emodel/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Gmodel/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<20
.model/batch_normalization_1/FusedBatchNormV3_1?
,model/batch_normalization_1/AssignNewValue_2AssignVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource;model/batch_normalization_1/FusedBatchNormV3_1:batch_mean:0+^model/batch_normalization_1/AssignNewValue>^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype02.
,model/batch_normalization_1/AssignNewValue_2?
,model/batch_normalization_1/AssignNewValue_3AssignVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource?model/batch_normalization_1/FusedBatchNormV3_1:batch_variance:0-^model/batch_normalization_1/AssignNewValue_1@^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype02.
,model/batch_normalization_1/AssignNewValue_3?
model/activation_1/Relu_1Relu2model/batch_normalization_1/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:?????????@2
model/activation_1/Relu_1?
model/dropout_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
model/dropout_1/dropout_1/Const?
model/dropout_1/dropout_1/MulMul'model/activation_1/Relu_1:activations:0(model/dropout_1/dropout_1/Const:output:0*
T0*/
_output_shapes
:?????????@2
model/dropout_1/dropout_1/Mul?
model/dropout_1/dropout_1/ShapeShape'model/activation_1/Relu_1:activations:0*
T0*
_output_shapes
:2!
model/dropout_1/dropout_1/Shape?
6model/dropout_1/dropout_1/random_uniform/RandomUniformRandomUniform(model/dropout_1/dropout_1/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype028
6model/dropout_1/dropout_1/random_uniform/RandomUniform?
(model/dropout_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(model/dropout_1/dropout_1/GreaterEqual/y?
&model/dropout_1/dropout_1/GreaterEqualGreaterEqual?model/dropout_1/dropout_1/random_uniform/RandomUniform:output:01model/dropout_1/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2(
&model/dropout_1/dropout_1/GreaterEqual?
model/dropout_1/dropout_1/CastCast*model/dropout_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2 
model/dropout_1/dropout_1/Cast?
model/dropout_1/dropout_1/Mul_1Mul!model/dropout_1/dropout_1/Mul:z:0"model/dropout_1/dropout_1/Cast:y:0*
T0*/
_output_shapes
:?????????@2!
model/dropout_1/dropout_1/Mul_1?
model/max_pooling2d_1/MaxPool_1MaxPool#model/dropout_1/dropout_1/Mul_1:z:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2!
model/max_pooling2d_1/MaxPool_1?
&model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02(
&model/conv2d_2/Conv2D_1/ReadVariableOp?
model/conv2d_2/Conv2D_1Conv2D(model/max_pooling2d_1/MaxPool_1:output:0.model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
model/conv2d_2/Conv2D_1?
'model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'model/conv2d_2/BiasAdd_1/ReadVariableOp?
model/conv2d_2/BiasAdd_1BiasAdd model/conv2d_2/Conv2D_1:output:0/model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model/conv2d_2/BiasAdd_1?
,model/batch_normalization_2/ReadVariableOp_2ReadVariableOp3model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,model/batch_normalization_2/ReadVariableOp_2?
,model/batch_normalization_2/ReadVariableOp_3ReadVariableOp5model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02.
,model/batch_normalization_2/ReadVariableOp_3?
=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpDmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource+^model/batch_normalization_2/AssignNewValue*
_output_shapes	
:?*
dtype02?
=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp?
?model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource-^model/batch_normalization_2/AssignNewValue_1*
_output_shapes	
:?*
dtype02A
?model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?
.model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV3!model/conv2d_2/BiasAdd_1:output:04model/batch_normalization_2/ReadVariableOp_2:value:04model/batch_normalization_2/ReadVariableOp_3:value:0Emodel/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0Gmodel/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<20
.model/batch_normalization_2/FusedBatchNormV3_1?
,model/batch_normalization_2/AssignNewValue_2AssignVariableOpDmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource;model/batch_normalization_2/FusedBatchNormV3_1:batch_mean:0+^model/batch_normalization_2/AssignNewValue>^model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype02.
,model/batch_normalization_2/AssignNewValue_2?
,model/batch_normalization_2/AssignNewValue_3AssignVariableOpFmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource?model/batch_normalization_2/FusedBatchNormV3_1:batch_variance:0-^model/batch_normalization_2/AssignNewValue_1@^model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype02.
,model/batch_normalization_2/AssignNewValue_3?
model/activation_2/Relu_1Relu2model/batch_normalization_2/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:??????????2
model/activation_2/Relu_1?
model/dropout_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
model/dropout_2/dropout_1/Const?
model/dropout_2/dropout_1/MulMul'model/activation_2/Relu_1:activations:0(model/dropout_2/dropout_1/Const:output:0*
T0*0
_output_shapes
:??????????2
model/dropout_2/dropout_1/Mul?
model/dropout_2/dropout_1/ShapeShape'model/activation_2/Relu_1:activations:0*
T0*
_output_shapes
:2!
model/dropout_2/dropout_1/Shape?
6model/dropout_2/dropout_1/random_uniform/RandomUniformRandomUniform(model/dropout_2/dropout_1/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype028
6model/dropout_2/dropout_1/random_uniform/RandomUniform?
(model/dropout_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(model/dropout_2/dropout_1/GreaterEqual/y?
&model/dropout_2/dropout_1/GreaterEqualGreaterEqual?model/dropout_2/dropout_1/random_uniform/RandomUniform:output:01model/dropout_2/dropout_1/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2(
&model/dropout_2/dropout_1/GreaterEqual?
model/dropout_2/dropout_1/CastCast*model/dropout_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2 
model/dropout_2/dropout_1/Cast?
model/dropout_2/dropout_1/Mul_1Mul!model/dropout_2/dropout_1/Mul:z:0"model/dropout_2/dropout_1/Cast:y:0*
T0*0
_output_shapes
:??????????2!
model/dropout_2/dropout_1/Mul_1?
model/max_pooling2d_2/MaxPool_1MaxPool#model/dropout_2/dropout_1/Mul_1:z:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2!
model/max_pooling2d_2/MaxPool_1?
7model/global_average_pooling2d/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      29
7model/global_average_pooling2d/Mean_1/reduction_indices?
%model/global_average_pooling2d/Mean_1Mean(model/max_pooling2d_2/MaxPool_1:output:0@model/global_average_pooling2d/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2'
%model/global_average_pooling2d/Mean_1?
#model/dense/MatMul_1/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02%
#model/dense/MatMul_1/ReadVariableOp?
model/dense/MatMul_1MatMul.model/global_average_pooling2d/Mean_1:output:0+model/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model/dense/MatMul_1?
$model/dense/BiasAdd_1/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02&
$model/dense/BiasAdd_1/ReadVariableOp?
model/dense/BiasAdd_1BiasAddmodel/dense/MatMul_1:product:0,model/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model/dense/BiasAdd_1?

lambda/subSubmodel/dense/BiasAdd:output:0model/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????02

lambda/subj
lambda/SquareSquarelambda/sub:z:0*
T0*'
_output_shapes
:?????????02
lambda/Square~
lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
lambda/Sum/reduction_indices?

lambda/SumSumlambda/Square:y:0%lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2

lambda/Sumi
lambda/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
lambda/Maximum/y?
lambda/MaximumMaximumlambda/Sum:output:0lambda/Maximum/y:output:0*
T0*'
_output_shapes
:?????????2
lambda/Maximuma
lambda/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lambda/Const?
lambda/Maximum_1Maximumlambda/Maximum:z:0lambda/Const:output:0*
T0*'
_output_shapes
:?????????2
lambda/Maximum_1j
lambda/SqrtSqrtlambda/Maximum_1:z:0*
T0*'
_output_shapes
:?????????2
lambda/Sqrtj
IdentityIdentitylambda/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp)^model/batch_normalization/AssignNewValue+^model/batch_normalization/AssignNewValue_1+^model/batch_normalization/AssignNewValue_2+^model/batch_normalization/AssignNewValue_3:^model/batch_normalization/FusedBatchNormV3/ReadVariableOp<^model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1<^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp>^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1)^model/batch_normalization/ReadVariableOp+^model/batch_normalization/ReadVariableOp_1+^model/batch_normalization/ReadVariableOp_2+^model/batch_normalization/ReadVariableOp_3+^model/batch_normalization_1/AssignNewValue-^model/batch_normalization_1/AssignNewValue_1-^model/batch_normalization_1/AssignNewValue_2-^model/batch_normalization_1/AssignNewValue_3<^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1>^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp@^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1+^model/batch_normalization_1/ReadVariableOp-^model/batch_normalization_1/ReadVariableOp_1-^model/batch_normalization_1/ReadVariableOp_2-^model/batch_normalization_1/ReadVariableOp_3+^model/batch_normalization_2/AssignNewValue-^model/batch_normalization_2/AssignNewValue_1-^model/batch_normalization_2/AssignNewValue_2-^model/batch_normalization_2/AssignNewValue_3<^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1>^model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp@^model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1+^model/batch_normalization_2/ReadVariableOp-^model/batch_normalization_2/ReadVariableOp_1-^model/batch_normalization_2/ReadVariableOp_2-^model/batch_normalization_2/ReadVariableOp_3$^model/conv2d/BiasAdd/ReadVariableOp&^model/conv2d/BiasAdd_1/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp%^model/conv2d/Conv2D_1/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp(^model/conv2d_1/BiasAdd_1/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp'^model/conv2d_1/Conv2D_1/ReadVariableOp&^model/conv2d_2/BiasAdd/ReadVariableOp(^model/conv2d_2/BiasAdd_1/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp'^model/conv2d_2/Conv2D_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/BiasAdd_1/ReadVariableOp"^model/dense/MatMul/ReadVariableOp$^model/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 2T
(model/batch_normalization/AssignNewValue(model/batch_normalization/AssignNewValue2X
*model/batch_normalization/AssignNewValue_1*model/batch_normalization/AssignNewValue_12X
*model/batch_normalization/AssignNewValue_2*model/batch_normalization/AssignNewValue_22X
*model/batch_normalization/AssignNewValue_3*model/batch_normalization/AssignNewValue_32v
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp9model/batch_normalization/FusedBatchNormV3/ReadVariableOp2z
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12z
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2~
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12T
(model/batch_normalization/ReadVariableOp(model/batch_normalization/ReadVariableOp2X
*model/batch_normalization/ReadVariableOp_1*model/batch_normalization/ReadVariableOp_12X
*model/batch_normalization/ReadVariableOp_2*model/batch_normalization/ReadVariableOp_22X
*model/batch_normalization/ReadVariableOp_3*model/batch_normalization/ReadVariableOp_32X
*model/batch_normalization_1/AssignNewValue*model/batch_normalization_1/AssignNewValue2\
,model/batch_normalization_1/AssignNewValue_1,model/batch_normalization_1/AssignNewValue_12\
,model/batch_normalization_1/AssignNewValue_2,model/batch_normalization_1/AssignNewValue_22\
,model/batch_normalization_1/AssignNewValue_3,model/batch_normalization_1/AssignNewValue_32z
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12~
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2?
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12X
*model/batch_normalization_1/ReadVariableOp*model/batch_normalization_1/ReadVariableOp2\
,model/batch_normalization_1/ReadVariableOp_1,model/batch_normalization_1/ReadVariableOp_12\
,model/batch_normalization_1/ReadVariableOp_2,model/batch_normalization_1/ReadVariableOp_22\
,model/batch_normalization_1/ReadVariableOp_3,model/batch_normalization_1/ReadVariableOp_32X
*model/batch_normalization_2/AssignNewValue*model/batch_normalization_2/AssignNewValue2\
,model/batch_normalization_2/AssignNewValue_1,model/batch_normalization_2/AssignNewValue_12\
,model/batch_normalization_2/AssignNewValue_2,model/batch_normalization_2/AssignNewValue_22\
,model/batch_normalization_2/AssignNewValue_3,model/batch_normalization_2/AssignNewValue_32z
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12~
=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2?
?model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12X
*model/batch_normalization_2/ReadVariableOp*model/batch_normalization_2/ReadVariableOp2\
,model/batch_normalization_2/ReadVariableOp_1,model/batch_normalization_2/ReadVariableOp_12\
,model/batch_normalization_2/ReadVariableOp_2,model/batch_normalization_2/ReadVariableOp_22\
,model/batch_normalization_2/ReadVariableOp_3,model/batch_normalization_2/ReadVariableOp_32J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2N
%model/conv2d/BiasAdd_1/ReadVariableOp%model/conv2d/BiasAdd_1/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2L
$model/conv2d/Conv2D_1/ReadVariableOp$model/conv2d/Conv2D_1/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2R
'model/conv2d_1/BiasAdd_1/ReadVariableOp'model/conv2d_1/BiasAdd_1/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2P
&model/conv2d_1/Conv2D_1/ReadVariableOp&model/conv2d_1/Conv2D_1/ReadVariableOp2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2R
'model/conv2d_2/BiasAdd_1/ReadVariableOp'model/conv2d_2/BiasAdd_1/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2P
&model/conv2d_2/Conv2D_1/ReadVariableOp&model/conv2d_2/Conv2D_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/BiasAdd_1/ReadVariableOp$model/dense/BiasAdd_1/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2J
#model/dense/MatMul_1/ReadVariableOp#model/dense/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:?????????>/
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????>/
"
_user_specified_name
inputs/1
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_7207

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9805

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<- : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
?
$__inference_model_layer_call_fn_8243
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?0

unknown_18:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_81552
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_3
?L
?
?__inference_model_layer_call_and_return_conditional_losses_7725

inputs%
conv2d_7523: 
conv2d_7525: &
batch_normalization_7546: &
batch_normalization_7548: &
batch_normalization_7550: &
batch_normalization_7552: '
conv2d_1_7586: @
conv2d_1_7588:@(
batch_normalization_1_7609:@(
batch_normalization_1_7611:@(
batch_normalization_1_7613:@(
batch_normalization_1_7615:@(
conv2d_2_7649:@?
conv2d_2_7651:	?)
batch_normalization_2_7672:	?)
batch_normalization_2_7674:	?)
batch_normalization_2_7676:	?)
batch_normalization_2_7678:	?

dense_7719:	?0

dense_7721:0
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_7523conv2d_7525*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_75222 
conv2d/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_7546batch_normalization_7548batch_normalization_7550batch_normalization_7552*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_75452-
+batch_normalization/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_75602
activation/PartitionedCall?
dropout/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_75672
dropout/PartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_75732
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_7586conv2d_1_7588*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_75852"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_7609batch_normalization_1_7611batch_normalization_1_7613batch_normalization_1_7615*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_76082/
-batch_normalization_1/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_76232
activation_1/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_76302
dropout_1/PartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_76362!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_7649conv2d_2_7651*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_76482"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_7672batch_normalization_2_7674batch_normalization_2_7676batch_normalization_2_7678*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_76712/
-batch_normalization_2/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_76862
activation_2/PartitionedCall?
dropout_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_76932
dropout_2/PartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_76992!
max_pooling2d_2/PartitionedCall?
(global_average_pooling2d/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_77062*
(global_average_pooling2d/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0
dense_7719
dense_7721*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_77182
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identity?
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?
H
,__inference_max_pooling2d_layer_call_fn_9852

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_75732
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_1_layer_call_fn_10047

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_73202
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
A__inference_model_1_layer_call_and_return_conditional_losses_9159
inputs_0
inputs_1E
+model_conv2d_conv2d_readvariableop_resource: :
,model_conv2d_biasadd_readvariableop_resource: ?
1model_batch_normalization_readvariableop_resource: A
3model_batch_normalization_readvariableop_1_resource: P
Bmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource: R
Dmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: G
-model_conv2d_1_conv2d_readvariableop_resource: @<
.model_conv2d_1_biasadd_readvariableop_resource:@A
3model_batch_normalization_1_readvariableop_resource:@C
5model_batch_normalization_1_readvariableop_1_resource:@R
Dmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@T
Fmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@H
-model_conv2d_2_conv2d_readvariableop_resource:@?=
.model_conv2d_2_biasadd_readvariableop_resource:	?B
3model_batch_normalization_2_readvariableop_resource:	?D
5model_batch_normalization_2_readvariableop_1_resource:	?S
Dmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?U
Fmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?=
*model_dense_matmul_readvariableop_resource:	?09
+model_dense_biasadd_readvariableop_resource:0
identity??9model/batch_normalization/FusedBatchNormV3/ReadVariableOp?;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1?(model/batch_normalization/ReadVariableOp?*model/batch_normalization/ReadVariableOp_1?*model/batch_normalization/ReadVariableOp_2?*model/batch_normalization/ReadVariableOp_3?;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp??model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?*model/batch_normalization_1/ReadVariableOp?,model/batch_normalization_1/ReadVariableOp_1?,model/batch_normalization_1/ReadVariableOp_2?,model/batch_normalization_1/ReadVariableOp_3?;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp??model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?*model/batch_normalization_2/ReadVariableOp?,model/batch_normalization_2/ReadVariableOp_1?,model/batch_normalization_2/ReadVariableOp_2?,model/batch_normalization_2/ReadVariableOp_3?#model/conv2d/BiasAdd/ReadVariableOp?%model/conv2d/BiasAdd_1/ReadVariableOp?"model/conv2d/Conv2D/ReadVariableOp?$model/conv2d/Conv2D_1/ReadVariableOp?%model/conv2d_1/BiasAdd/ReadVariableOp?'model/conv2d_1/BiasAdd_1/ReadVariableOp?$model/conv2d_1/Conv2D/ReadVariableOp?&model/conv2d_1/Conv2D_1/ReadVariableOp?%model/conv2d_2/BiasAdd/ReadVariableOp?'model/conv2d_2/BiasAdd_1/ReadVariableOp?$model/conv2d_2/Conv2D/ReadVariableOp?&model/conv2d_2/Conv2D_1/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?$model/dense/BiasAdd_1/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?#model/dense/MatMul_1/ReadVariableOp?
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02$
"model/conv2d/Conv2D/ReadVariableOp?
model/conv2d/Conv2DConv2Dinputs_0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
model/conv2d/Conv2D?
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#model/conv2d/BiasAdd/ReadVariableOp?
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2
model/conv2d/BiasAdd?
(model/batch_normalization/ReadVariableOpReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype02*
(model/batch_normalization/ReadVariableOp?
*model/batch_normalization/ReadVariableOp_1ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*model/batch_normalization/ReadVariableOp_1?
9model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02;
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp?
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
*model/batch_normalization/FusedBatchNormV3FusedBatchNormV3model/conv2d/BiasAdd:output:00model/batch_normalization/ReadVariableOp:value:02model/batch_normalization/ReadVariableOp_1:value:0Amodel/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
is_training( 2,
*model/batch_normalization/FusedBatchNormV3?
model/activation/ReluRelu.model/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<- 2
model/activation/Relu?
model/dropout/IdentityIdentity#model/activation/Relu:activations:0*
T0*/
_output_shapes
:?????????<- 2
model/dropout/Identity?
model/max_pooling2d/MaxPoolMaxPoolmodel/dropout/Identity:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPool?
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02&
$model/conv2d_1/Conv2D/ReadVariableOp?
model/conv2d_1/Conv2DConv2D$model/max_pooling2d/MaxPool:output:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
model/conv2d_1/Conv2D?
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%model/conv2d_1/BiasAdd/ReadVariableOp?
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/conv2d_1/BiasAdd?
*model/batch_normalization_1/ReadVariableOpReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/batch_normalization_1/ReadVariableOp?
,model/batch_normalization_1/ReadVariableOp_1ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02.
,model/batch_normalization_1/ReadVariableOp_1?
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02=
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
,model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3model/conv2d_1/BiasAdd:output:02model/batch_normalization_1/ReadVariableOp:value:04model/batch_normalization_1/ReadVariableOp_1:value:0Cmodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2.
,model/batch_normalization_1/FusedBatchNormV3?
model/activation_1/ReluRelu0model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2
model/activation_1/Relu?
model/dropout_1/IdentityIdentity%model/activation_1/Relu:activations:0*
T0*/
_output_shapes
:?????????@2
model/dropout_1/Identity?
model/max_pooling2d_1/MaxPoolMaxPool!model/dropout_1/Identity:output:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_1/MaxPool?
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02&
$model/conv2d_2/Conv2D/ReadVariableOp?
model/conv2d_2/Conv2DConv2D&model/max_pooling2d_1/MaxPool:output:0,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
model/conv2d_2/Conv2D?
%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%model/conv2d_2/BiasAdd/ReadVariableOp?
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2D:output:0-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model/conv2d_2/BiasAdd?
*model/batch_normalization_2/ReadVariableOpReadVariableOp3model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*model/batch_normalization_2/ReadVariableOp?
,model/batch_normalization_2/ReadVariableOp_1ReadVariableOp5model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02.
,model/batch_normalization_2/ReadVariableOp_1?
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02=
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02?
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
,model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3model/conv2d_2/BiasAdd:output:02model/batch_normalization_2/ReadVariableOp:value:04model/batch_normalization_2/ReadVariableOp_1:value:0Cmodel/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2.
,model/batch_normalization_2/FusedBatchNormV3?
model/activation_2/ReluRelu0model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
model/activation_2/Relu?
model/dropout_2/IdentityIdentity%model/activation_2/Relu:activations:0*
T0*0
_output_shapes
:??????????2
model/dropout_2/Identity?
model/max_pooling2d_2/MaxPoolMaxPool!model/dropout_2/Identity:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_2/MaxPool?
5model/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model/global_average_pooling2d/Mean/reduction_indices?
#model/global_average_pooling2d/MeanMean&model/max_pooling2d_2/MaxPool:output:0>model/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2%
#model/global_average_pooling2d/Mean?
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02#
!model/dense/MatMul/ReadVariableOp?
model/dense/MatMulMatMul,model/global_average_pooling2d/Mean:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model/dense/MatMul?
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02$
"model/dense/BiasAdd/ReadVariableOp?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model/dense/BiasAdd?
$model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02&
$model/conv2d/Conv2D_1/ReadVariableOp?
model/conv2d/Conv2D_1Conv2Dinputs_1,model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
model/conv2d/Conv2D_1?
%model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%model/conv2d/BiasAdd_1/ReadVariableOp?
model/conv2d/BiasAdd_1BiasAddmodel/conv2d/Conv2D_1:output:0-model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2
model/conv2d/BiasAdd_1?
*model/batch_normalization/ReadVariableOp_2ReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype02,
*model/batch_normalization/ReadVariableOp_2?
*model/batch_normalization/ReadVariableOp_3ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*model/batch_normalization/ReadVariableOp_3?
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02=
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02?
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1?
,model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3model/conv2d/BiasAdd_1:output:02model/batch_normalization/ReadVariableOp_2:value:02model/batch_normalization/ReadVariableOp_3:value:0Cmodel/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Emodel/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
is_training( 2.
,model/batch_normalization/FusedBatchNormV3_1?
model/activation/Relu_1Relu0model/batch_normalization/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:?????????<- 2
model/activation/Relu_1?
model/dropout/Identity_1Identity%model/activation/Relu_1:activations:0*
T0*/
_output_shapes
:?????????<- 2
model/dropout/Identity_1?
model/max_pooling2d/MaxPool_1MaxPool!model/dropout/Identity_1:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPool_1?
&model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02(
&model/conv2d_1/Conv2D_1/ReadVariableOp?
model/conv2d_1/Conv2D_1Conv2D&model/max_pooling2d/MaxPool_1:output:0.model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
model/conv2d_1/Conv2D_1?
'model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model/conv2d_1/BiasAdd_1/ReadVariableOp?
model/conv2d_1/BiasAdd_1BiasAdd model/conv2d_1/Conv2D_1:output:0/model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
model/conv2d_1/BiasAdd_1?
,model/batch_normalization_1/ReadVariableOp_2ReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype02.
,model/batch_normalization_1/ReadVariableOp_2?
,model/batch_normalization_1/ReadVariableOp_3ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype02.
,model/batch_normalization_1/ReadVariableOp_3?
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02?
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02A
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?
.model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3!model/conv2d_1/BiasAdd_1:output:04model/batch_normalization_1/ReadVariableOp_2:value:04model/batch_normalization_1/ReadVariableOp_3:value:0Emodel/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Gmodel/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 20
.model/batch_normalization_1/FusedBatchNormV3_1?
model/activation_1/Relu_1Relu2model/batch_normalization_1/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:?????????@2
model/activation_1/Relu_1?
model/dropout_1/Identity_1Identity'model/activation_1/Relu_1:activations:0*
T0*/
_output_shapes
:?????????@2
model/dropout_1/Identity_1?
model/max_pooling2d_1/MaxPool_1MaxPool#model/dropout_1/Identity_1:output:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2!
model/max_pooling2d_1/MaxPool_1?
&model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02(
&model/conv2d_2/Conv2D_1/ReadVariableOp?
model/conv2d_2/Conv2D_1Conv2D(model/max_pooling2d_1/MaxPool_1:output:0.model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
model/conv2d_2/Conv2D_1?
'model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'model/conv2d_2/BiasAdd_1/ReadVariableOp?
model/conv2d_2/BiasAdd_1BiasAdd model/conv2d_2/Conv2D_1:output:0/model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
model/conv2d_2/BiasAdd_1?
,model/batch_normalization_2/ReadVariableOp_2ReadVariableOp3model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,model/batch_normalization_2/ReadVariableOp_2?
,model/batch_normalization_2/ReadVariableOp_3ReadVariableOp5model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02.
,model/batch_normalization_2/ReadVariableOp_3?
=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpDmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp?
?model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?
.model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV3!model/conv2d_2/BiasAdd_1:output:04model/batch_normalization_2/ReadVariableOp_2:value:04model/batch_normalization_2/ReadVariableOp_3:value:0Emodel/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0Gmodel/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 20
.model/batch_normalization_2/FusedBatchNormV3_1?
model/activation_2/Relu_1Relu2model/batch_normalization_2/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:??????????2
model/activation_2/Relu_1?
model/dropout_2/Identity_1Identity'model/activation_2/Relu_1:activations:0*
T0*0
_output_shapes
:??????????2
model/dropout_2/Identity_1?
model/max_pooling2d_2/MaxPool_1MaxPool#model/dropout_2/Identity_1:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2!
model/max_pooling2d_2/MaxPool_1?
7model/global_average_pooling2d/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      29
7model/global_average_pooling2d/Mean_1/reduction_indices?
%model/global_average_pooling2d/Mean_1Mean(model/max_pooling2d_2/MaxPool_1:output:0@model/global_average_pooling2d/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2'
%model/global_average_pooling2d/Mean_1?
#model/dense/MatMul_1/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02%
#model/dense/MatMul_1/ReadVariableOp?
model/dense/MatMul_1MatMul.model/global_average_pooling2d/Mean_1:output:0+model/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model/dense/MatMul_1?
$model/dense/BiasAdd_1/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02&
$model/dense/BiasAdd_1/ReadVariableOp?
model/dense/BiasAdd_1BiasAddmodel/dense/MatMul_1:product:0,model/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model/dense/BiasAdd_1?

lambda/subSubmodel/dense/BiasAdd:output:0model/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????02

lambda/subj
lambda/SquareSquarelambda/sub:z:0*
T0*'
_output_shapes
:?????????02
lambda/Square~
lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
lambda/Sum/reduction_indices?

lambda/SumSumlambda/Square:y:0%lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2

lambda/Sumi
lambda/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
lambda/Maximum/y?
lambda/MaximumMaximumlambda/Sum:output:0lambda/Maximum/y:output:0*
T0*'
_output_shapes
:?????????2
lambda/Maximuma
lambda/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lambda/Const?
lambda/Maximum_1Maximumlambda/Maximum:z:0lambda/Const:output:0*
T0*'
_output_shapes
:?????????2
lambda/Maximum_1j
lambda/SqrtSqrtlambda/Maximum_1:z:0*
T0*'
_output_shapes
:?????????2
lambda/Sqrtj
IdentityIdentitylambda/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp:^model/batch_normalization/FusedBatchNormV3/ReadVariableOp<^model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1<^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp>^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1)^model/batch_normalization/ReadVariableOp+^model/batch_normalization/ReadVariableOp_1+^model/batch_normalization/ReadVariableOp_2+^model/batch_normalization/ReadVariableOp_3<^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1>^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp@^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1+^model/batch_normalization_1/ReadVariableOp-^model/batch_normalization_1/ReadVariableOp_1-^model/batch_normalization_1/ReadVariableOp_2-^model/batch_normalization_1/ReadVariableOp_3<^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1>^model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp@^model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1+^model/batch_normalization_2/ReadVariableOp-^model/batch_normalization_2/ReadVariableOp_1-^model/batch_normalization_2/ReadVariableOp_2-^model/batch_normalization_2/ReadVariableOp_3$^model/conv2d/BiasAdd/ReadVariableOp&^model/conv2d/BiasAdd_1/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp%^model/conv2d/Conv2D_1/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp(^model/conv2d_1/BiasAdd_1/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp'^model/conv2d_1/Conv2D_1/ReadVariableOp&^model/conv2d_2/BiasAdd/ReadVariableOp(^model/conv2d_2/BiasAdd_1/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp'^model/conv2d_2/Conv2D_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/BiasAdd_1/ReadVariableOp"^model/dense/MatMul/ReadVariableOp$^model/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 2v
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp9model/batch_normalization/FusedBatchNormV3/ReadVariableOp2z
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12z
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2~
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12T
(model/batch_normalization/ReadVariableOp(model/batch_normalization/ReadVariableOp2X
*model/batch_normalization/ReadVariableOp_1*model/batch_normalization/ReadVariableOp_12X
*model/batch_normalization/ReadVariableOp_2*model/batch_normalization/ReadVariableOp_22X
*model/batch_normalization/ReadVariableOp_3*model/batch_normalization/ReadVariableOp_32z
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12~
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2?
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12X
*model/batch_normalization_1/ReadVariableOp*model/batch_normalization_1/ReadVariableOp2\
,model/batch_normalization_1/ReadVariableOp_1,model/batch_normalization_1/ReadVariableOp_12\
,model/batch_normalization_1/ReadVariableOp_2,model/batch_normalization_1/ReadVariableOp_22\
,model/batch_normalization_1/ReadVariableOp_3,model/batch_normalization_1/ReadVariableOp_32z
;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12~
=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp=model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2?
?model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12X
*model/batch_normalization_2/ReadVariableOp*model/batch_normalization_2/ReadVariableOp2\
,model/batch_normalization_2/ReadVariableOp_1,model/batch_normalization_2/ReadVariableOp_12\
,model/batch_normalization_2/ReadVariableOp_2,model/batch_normalization_2/ReadVariableOp_22\
,model/batch_normalization_2/ReadVariableOp_3,model/batch_normalization_2/ReadVariableOp_32J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2N
%model/conv2d/BiasAdd_1/ReadVariableOp%model/conv2d/BiasAdd_1/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2L
$model/conv2d/Conv2D_1/ReadVariableOp$model/conv2d/Conv2D_1/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2R
'model/conv2d_1/BiasAdd_1/ReadVariableOp'model/conv2d_1/BiasAdd_1/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2P
&model/conv2d_1/Conv2D_1/ReadVariableOp&model/conv2d_1/Conv2D_1/ReadVariableOp2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2R
'model/conv2d_2/BiasAdd_1/ReadVariableOp'model/conv2d_2/BiasAdd_1/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2P
&model/conv2d_2/Conv2D_1/ReadVariableOp&model/conv2d_2/Conv2D_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/BiasAdd_1/ReadVariableOp$model/dense/BiasAdd_1/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2J
#model/dense/MatMul_1/ReadVariableOp#model/dense/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:?????????>/
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????>/
"
_user_specified_name
inputs/1
?
?
'__inference_conv2d_1_layer_call_fn_9871

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_75852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
l
@__inference_lambda_layer_call_and_return_conditional_losses_9648
inputs_0
inputs_1
identityW
subSubinputs_0inputs_1*
T0*'
_output_shapes
:?????????02
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????02
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????0:?????????0:Q M
'
_output_shapes
:?????????0
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????0
"
_user_specified_name
inputs/1
?
?
A__inference_model_1_layer_call_and_return_conditional_losses_8453

inputs
inputs_1$

model_8374: 

model_8376: 

model_8378: 

model_8380: 

model_8382: 

model_8384: $

model_8386: @

model_8388:@

model_8390:@

model_8392:@

model_8394:@

model_8396:@%

model_8398:@?

model_8400:	?

model_8402:	?

model_8404:	?

model_8406:	?

model_8408:	?

model_8410:	?0

model_8412:0
identity??model/StatefulPartitionedCall?model/StatefulPartitionedCall_1?
model/StatefulPartitionedCallStatefulPartitionedCallinputs
model_8374
model_8376
model_8378
model_8380
model_8382
model_8384
model_8386
model_8388
model_8390
model_8392
model_8394
model_8396
model_8398
model_8400
model_8402
model_8404
model_8406
model_8408
model_8410
model_8412* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_77252
model/StatefulPartitionedCall?
model/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1
model_8374
model_8376
model_8378
model_8380
model_8382
model_8384
model_8386
model_8388
model_8390
model_8392
model_8394
model_8396
model_8398
model_8400
model_8402
model_8404
model_8406
model_8408
model_8410
model_8412* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_77252!
model/StatefulPartitionedCall_1?
lambda/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_84502
lambda/PartitionedCallz
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9862

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?	
?
5__inference_batch_normalization_2_layer_call_fn_10094

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_73552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
A__inference_model_1_layer_call_and_return_conditional_losses_8797
input_1
input_2$

model_8733: 

model_8735: 

model_8737: 

model_8739: 

model_8741: 

model_8743: $

model_8745: @

model_8747:@

model_8749:@

model_8751:@

model_8753:@

model_8755:@%

model_8757:@?

model_8759:	?

model_8761:	?

model_8763:	?

model_8765:	?

model_8767:	?

model_8769:	?0

model_8771:0
identity??model/StatefulPartitionedCall?model/StatefulPartitionedCall_1?
model/StatefulPartitionedCallStatefulPartitionedCallinput_1
model_8733
model_8735
model_8737
model_8739
model_8741
model_8743
model_8745
model_8747
model_8749
model_8751
model_8753
model_8755
model_8757
model_8759
model_8761
model_8763
model_8765
model_8767
model_8769
model_8771* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_77252
model/StatefulPartitionedCall?
model/StatefulPartitionedCall_1StatefulPartitionedCallinput_2
model_8733
model_8735
model_8737
model_8739
model_8741
model_8743
model_8745
model_8747
model_8749
model_8751
model_8753
model_8755
model_8757
model_8759
model_8761
model_8763
model_8765
model_8767
model_8769
model_8771* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_77252!
model/StatefulPartitionedCall_1?
lambda/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_84502
lambda/PartitionedCallz
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_1:XT
/
_output_shapes
:?????????>/
!
_user_specified_name	input_2
?
b
F__inference_activation_1_layer_call_and_return_conditional_losses_7623

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
2__inference_batch_normalization_layer_call_fn_9733

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_80262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<- : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7355

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
B__inference_conv2d_1_layer_call_and_return_conditional_losses_9881

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9751

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10057

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
4__inference_batch_normalization_1_layer_call_fn_9933

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_79382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
$__inference_model_layer_call_fn_7768
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?0

unknown_18:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_77252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_3
?
?
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_7850

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1x
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_10005

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
?__inference_dense_layer_call_and_return_conditional_losses_7718

inputs1
matmul_readvariableop_resource:	?0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_model_1_layer_call_and_return_conditional_losses_8640

inputs
inputs_1$

model_8576: 

model_8578: 

model_8580: 

model_8582: 

model_8584: 

model_8586: $

model_8588: @

model_8590:@

model_8592:@

model_8594:@

model_8596:@

model_8598:@%

model_8600:@?

model_8602:	?

model_8604:	?

model_8606:	?

model_8608:	?

model_8610:	?

model_8612:	?0

model_8614:0
identity??model/StatefulPartitionedCall?model/StatefulPartitionedCall_1?
model/StatefulPartitionedCallStatefulPartitionedCallinputs
model_8576
model_8578
model_8580
model_8582
model_8584
model_8586
model_8588
model_8590
model_8592
model_8594
model_8596
model_8598
model_8600
model_8602
model_8604
model_8606
model_8608
model_8610
model_8612
model_8614* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_81552
model/StatefulPartitionedCall?
model/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1
model_8576
model_8578
model_8580
model_8582
model_8584
model_8586
model_8588
model_8590
model_8592
model_8594
model_8596
model_8598
model_8600
model_8602
model_8604
model_8606
model_8608
model_8610
model_8612
model_8614^model/StatefulPartitionedCall* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_81552!
model/StatefulPartitionedCall_1?
lambda/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_85202
lambda/PartitionedCallz
IdentityIdentitylambda/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?
`
A__inference_dropout_layer_call_and_return_conditional_losses_9842

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????<- 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????<- *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<- 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<- 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<- 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????<- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_7251

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
b
C__inference_dropout_2_layer_call_and_return_conditional_losses_7808

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_7608

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
@__inference_dense_layer_call_and_return_conditional_losses_10303

inputs1
matmul_readvariableop_resource:	?0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_max_pooling2d_layer_call_fn_9847

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_71722
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_10242

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7573

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
`
D__inference_activation_layer_call_and_return_conditional_losses_7560

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:?????????<- 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:?????????<- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
_
A__inference_dropout_layer_call_and_return_conditional_losses_7567

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????<- 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????<- 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_7545

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<- : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_7938

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
)__inference_dropout_1_layer_call_fn_10025

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_78962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
2__inference_batch_normalization_layer_call_fn_9694

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_70592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
`
A__inference_dropout_layer_call_and_return_conditional_losses_7984

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????<- 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????<- *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<- 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<- 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<- 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????<- 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9787

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????<- : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10169

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_model_layer_call_fn_9394

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@?

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?0

unknown_18:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_77252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?	
?
2__inference_batch_normalization_layer_call_fn_9707

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_71032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
@__inference_conv2d_layer_call_and_return_conditional_losses_7522

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2	
BiasAdds
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:?????????<- 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????>/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????>/
 
_user_specified_nameinputs
?m
?
__inference__traced_save_10492
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
value?B?8B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *F
dtypes<
:28	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : : : : : : @:@:@:@:@:@:@?:?:?:?:?:?:	?0:0: : : : : : : @:@:@:@:@?:?:?:?:	?0:0: : : : : @:@:@:@:@?:?:?:?:	?0:0: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?0: 

_output_shapes
:0:

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :, (
&
_output_shapes
: @: !

_output_shapes
:@: "

_output_shapes
:@: #

_output_shapes
:@:-$)
'
_output_shapes
:@?:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:%(!

_output_shapes
:	?0: )

_output_shapes
:0:,*(
&
_output_shapes
: : +

_output_shapes
: : ,

_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
: @: /

_output_shapes
:@: 0

_output_shapes
:@: 1

_output_shapes
:@:-2)
'
_output_shapes
:@?:!3

_output_shapes	
:?:!4

_output_shapes	
:?:!5

_output_shapes	
:?:%6!

_output_shapes
:	?0: 7

_output_shapes
:0:8

_output_shapes
: 
?
j
@__inference_lambda_layer_call_and_return_conditional_losses_8520

inputs
inputs_1
identityU
subSubinputsinputs_1*
T0*'
_output_shapes
:?????????02
subU
SquareSquaresub:z:0*
T0*'
_output_shapes
:?????????02
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices?
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:?????????2	
MaximumS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Constp
	Maximum_1MaximumMaximum:z:0Const:output:0*
T0*'
_output_shapes
:?????????2
	Maximum_1U
SqrtSqrtMaximum_1:z:0*
T0*'
_output_shapes
:?????????2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????0:?????????0:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7468

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
_
A__inference_dropout_layer_call_and_return_conditional_losses_9830

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????<- 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????<- 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<- :W S
/
_output_shapes
:?????????<- 
 
_user_specified_nameinputs
?
Q
%__inference_lambda_layer_call_fn_9628
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_84502
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????0:?????????0:Q M
'
_output_shapes
:?????????0
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????0
"
_user_specified_name
inputs/1
?
?
5__inference_batch_normalization_2_layer_call_fn_10133

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_78502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?L
?
?__inference_model_layer_call_and_return_conditional_losses_8304
input_3%
conv2d_8246: 
conv2d_8248: &
batch_normalization_8251: &
batch_normalization_8253: &
batch_normalization_8255: &
batch_normalization_8257: '
conv2d_1_8263: @
conv2d_1_8265:@(
batch_normalization_1_8268:@(
batch_normalization_1_8270:@(
batch_normalization_1_8272:@(
batch_normalization_1_8274:@(
conv2d_2_8280:@?
conv2d_2_8282:	?)
batch_normalization_2_8285:	?)
batch_normalization_2_8287:	?)
batch_normalization_2_8289:	?)
batch_normalization_2_8291:	?

dense_8298:	?0

dense_8300:0
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_8246conv2d_8248*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_75222 
conv2d/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_8251batch_normalization_8253batch_normalization_8255batch_normalization_8257*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_batch_normalization_layer_call_and_return_conditional_losses_75452-
+batch_normalization/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_75602
activation/PartitionedCall?
dropout/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_75672
dropout/PartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_75732
max_pooling2d/PartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_8263conv2d_1_8265*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_75852"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_8268batch_normalization_1_8270batch_normalization_1_8272batch_normalization_1_8274*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_76082/
-batch_normalization_1/StatefulPartitionedCall?
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_76232
activation_1/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_76302
dropout_1/PartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_76362!
max_pooling2d_1/PartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_8280conv2d_2_8282*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_76482"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_8285batch_normalization_2_8287batch_normalization_2_8289batch_normalization_2_8291*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_batch_normalization_2_layer_call_and_return_conditional_losses_76712/
-batch_normalization_2/StatefulPartitionedCall?
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_activation_2_layer_call_and_return_conditional_losses_76862
activation_2/PartitionedCall?
dropout_2/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_76932
dropout_2/PartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_76992!
max_pooling2d_2/PartitionedCall?
(global_average_pooling2d/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_77062*
(global_average_pooling2d/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0
dense_8298
dense_8300*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_77182
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????02

Identity?
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????>/: : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_3
??
?
__inference__wrapped_model_7037
input_1
input_2M
3model_1_model_conv2d_conv2d_readvariableop_resource: B
4model_1_model_conv2d_biasadd_readvariableop_resource: G
9model_1_model_batch_normalization_readvariableop_resource: I
;model_1_model_batch_normalization_readvariableop_1_resource: X
Jmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_resource: Z
Lmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: O
5model_1_model_conv2d_1_conv2d_readvariableop_resource: @D
6model_1_model_conv2d_1_biasadd_readvariableop_resource:@I
;model_1_model_batch_normalization_1_readvariableop_resource:@K
=model_1_model_batch_normalization_1_readvariableop_1_resource:@Z
Lmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@\
Nmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@P
5model_1_model_conv2d_2_conv2d_readvariableop_resource:@?E
6model_1_model_conv2d_2_biasadd_readvariableop_resource:	?J
;model_1_model_batch_normalization_2_readvariableop_resource:	?L
=model_1_model_batch_normalization_2_readvariableop_1_resource:	?[
Lmodel_1_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	?]
Nmodel_1_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	?E
2model_1_model_dense_matmul_readvariableop_resource:	?0A
3model_1_model_dense_biasadd_readvariableop_resource:0
identity??Amodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp?Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?Cmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1?0model_1/model/batch_normalization/ReadVariableOp?2model_1/model/batch_normalization/ReadVariableOp_1?2model_1/model/batch_normalization/ReadVariableOp_2?2model_1/model/batch_normalization/ReadVariableOp_3?Cmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?Emodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?2model_1/model/batch_normalization_1/ReadVariableOp?4model_1/model/batch_normalization_1/ReadVariableOp_1?4model_1/model/batch_normalization_1/ReadVariableOp_2?4model_1/model/batch_normalization_1/ReadVariableOp_3?Cmodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Emodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?Emodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp?Gmodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?2model_1/model/batch_normalization_2/ReadVariableOp?4model_1/model/batch_normalization_2/ReadVariableOp_1?4model_1/model/batch_normalization_2/ReadVariableOp_2?4model_1/model/batch_normalization_2/ReadVariableOp_3?+model_1/model/conv2d/BiasAdd/ReadVariableOp?-model_1/model/conv2d/BiasAdd_1/ReadVariableOp?*model_1/model/conv2d/Conv2D/ReadVariableOp?,model_1/model/conv2d/Conv2D_1/ReadVariableOp?-model_1/model/conv2d_1/BiasAdd/ReadVariableOp?/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp?,model_1/model/conv2d_1/Conv2D/ReadVariableOp?.model_1/model/conv2d_1/Conv2D_1/ReadVariableOp?-model_1/model/conv2d_2/BiasAdd/ReadVariableOp?/model_1/model/conv2d_2/BiasAdd_1/ReadVariableOp?,model_1/model/conv2d_2/Conv2D/ReadVariableOp?.model_1/model/conv2d_2/Conv2D_1/ReadVariableOp?*model_1/model/dense/BiasAdd/ReadVariableOp?,model_1/model/dense/BiasAdd_1/ReadVariableOp?)model_1/model/dense/MatMul/ReadVariableOp?+model_1/model/dense/MatMul_1/ReadVariableOp?
*model_1/model/conv2d/Conv2D/ReadVariableOpReadVariableOp3model_1_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02,
*model_1/model/conv2d/Conv2D/ReadVariableOp?
model_1/model/conv2d/Conv2DConv2Dinput_12model_1/model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
model_1/model/conv2d/Conv2D?
+model_1/model/conv2d/BiasAdd/ReadVariableOpReadVariableOp4model_1_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+model_1/model/conv2d/BiasAdd/ReadVariableOp?
model_1/model/conv2d/BiasAddBiasAdd$model_1/model/conv2d/Conv2D:output:03model_1/model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2
model_1/model/conv2d/BiasAdd?
0model_1/model/batch_normalization/ReadVariableOpReadVariableOp9model_1_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype022
0model_1/model/batch_normalization/ReadVariableOp?
2model_1/model/batch_normalization/ReadVariableOp_1ReadVariableOp;model_1_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype024
2model_1/model/batch_normalization/ReadVariableOp_1?
Amodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpJmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02C
Amodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp?
Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02E
Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?
2model_1/model/batch_normalization/FusedBatchNormV3FusedBatchNormV3%model_1/model/conv2d/BiasAdd:output:08model_1/model/batch_normalization/ReadVariableOp:value:0:model_1/model/batch_normalization/ReadVariableOp_1:value:0Imodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Kmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
is_training( 24
2model_1/model/batch_normalization/FusedBatchNormV3?
model_1/model/activation/ReluRelu6model_1/model/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<- 2
model_1/model/activation/Relu?
model_1/model/dropout/IdentityIdentity+model_1/model/activation/Relu:activations:0*
T0*/
_output_shapes
:?????????<- 2 
model_1/model/dropout/Identity?
#model_1/model/max_pooling2d/MaxPoolMaxPool'model_1/model/dropout/Identity:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2%
#model_1/model/max_pooling2d/MaxPool?
,model_1/model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp5model_1_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,model_1/model/conv2d_1/Conv2D/ReadVariableOp?
model_1/model/conv2d_1/Conv2DConv2D,model_1/model/max_pooling2d/MaxPool:output:04model_1/model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
model_1/model/conv2d_1/Conv2D?
-model_1/model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp6model_1_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-model_1/model/conv2d_1/BiasAdd/ReadVariableOp?
model_1/model/conv2d_1/BiasAddBiasAdd&model_1/model/conv2d_1/Conv2D:output:05model_1/model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2 
model_1/model/conv2d_1/BiasAdd?
2model_1/model/batch_normalization_1/ReadVariableOpReadVariableOp;model_1_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype024
2model_1/model/batch_normalization_1/ReadVariableOp?
4model_1/model/batch_normalization_1/ReadVariableOp_1ReadVariableOp=model_1_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4model_1/model/batch_normalization_1/ReadVariableOp_1?
Cmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?
Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1?
4model_1/model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3'model_1/model/conv2d_1/BiasAdd:output:0:model_1/model/batch_normalization_1/ReadVariableOp:value:0<model_1/model/batch_normalization_1/ReadVariableOp_1:value:0Kmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 26
4model_1/model/batch_normalization_1/FusedBatchNormV3?
model_1/model/activation_1/ReluRelu8model_1/model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????@2!
model_1/model/activation_1/Relu?
 model_1/model/dropout_1/IdentityIdentity-model_1/model/activation_1/Relu:activations:0*
T0*/
_output_shapes
:?????????@2"
 model_1/model/dropout_1/Identity?
%model_1/model/max_pooling2d_1/MaxPoolMaxPool)model_1/model/dropout_1/Identity:output:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2'
%model_1/model/max_pooling2d_1/MaxPool?
,model_1/model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp5model_1_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02.
,model_1/model/conv2d_2/Conv2D/ReadVariableOp?
model_1/model/conv2d_2/Conv2DConv2D.model_1/model/max_pooling2d_1/MaxPool:output:04model_1/model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
model_1/model/conv2d_2/Conv2D?
-model_1/model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp6model_1_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-model_1/model/conv2d_2/BiasAdd/ReadVariableOp?
model_1/model/conv2d_2/BiasAddBiasAdd&model_1/model/conv2d_2/Conv2D:output:05model_1/model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
model_1/model/conv2d_2/BiasAdd?
2model_1/model/batch_normalization_2/ReadVariableOpReadVariableOp;model_1_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype024
2model_1/model/batch_normalization_2/ReadVariableOp?
4model_1/model/batch_normalization_2/ReadVariableOp_1ReadVariableOp=model_1_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4model_1/model/batch_normalization_2/ReadVariableOp_1?
Cmodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_1_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02E
Cmodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Emodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_1_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02G
Emodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
4model_1/model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3'model_1/model/conv2d_2/BiasAdd:output:0:model_1/model/batch_normalization_2/ReadVariableOp:value:0<model_1/model/batch_normalization_2/ReadVariableOp_1:value:0Kmodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 26
4model_1/model/batch_normalization_2/FusedBatchNormV3?
model_1/model/activation_2/ReluRelu8model_1/model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2!
model_1/model/activation_2/Relu?
 model_1/model/dropout_2/IdentityIdentity-model_1/model/activation_2/Relu:activations:0*
T0*0
_output_shapes
:??????????2"
 model_1/model/dropout_2/Identity?
%model_1/model/max_pooling2d_2/MaxPoolMaxPool)model_1/model/dropout_2/Identity:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2'
%model_1/model/max_pooling2d_2/MaxPool?
=model_1/model/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2?
=model_1/model/global_average_pooling2d/Mean/reduction_indices?
+model_1/model/global_average_pooling2d/MeanMean.model_1/model/max_pooling2d_2/MaxPool:output:0Fmodel_1/model/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2-
+model_1/model/global_average_pooling2d/Mean?
)model_1/model/dense/MatMul/ReadVariableOpReadVariableOp2model_1_model_dense_matmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02+
)model_1/model/dense/MatMul/ReadVariableOp?
model_1/model/dense/MatMulMatMul4model_1/model/global_average_pooling2d/Mean:output:01model_1/model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model_1/model/dense/MatMul?
*model_1/model/dense/BiasAdd/ReadVariableOpReadVariableOp3model_1_model_dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02,
*model_1/model/dense/BiasAdd/ReadVariableOp?
model_1/model/dense/BiasAddBiasAdd$model_1/model/dense/MatMul:product:02model_1/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model_1/model/dense/BiasAdd?
,model_1/model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp3model_1_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,model_1/model/conv2d/Conv2D_1/ReadVariableOp?
model_1/model/conv2d/Conv2D_1Conv2Dinput_24model_1/model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- *
paddingVALID*
strides
2
model_1/model/conv2d/Conv2D_1?
-model_1/model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp4model_1_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-model_1/model/conv2d/BiasAdd_1/ReadVariableOp?
model_1/model/conv2d/BiasAdd_1BiasAdd&model_1/model/conv2d/Conv2D_1:output:05model_1/model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<- 2 
model_1/model/conv2d/BiasAdd_1?
2model_1/model/batch_normalization/ReadVariableOp_2ReadVariableOp9model_1_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype024
2model_1/model/batch_normalization/ReadVariableOp_2?
2model_1/model/batch_normalization/ReadVariableOp_3ReadVariableOp;model_1_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype024
2model_1/model/batch_normalization/ReadVariableOp_3?
Cmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpJmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02E
Cmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?
Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpLmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02G
Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1?
4model_1/model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3'model_1/model/conv2d/BiasAdd_1:output:0:model_1/model/batch_normalization/ReadVariableOp_2:value:0:model_1/model/batch_normalization/ReadVariableOp_3:value:0Kmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Mmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<- : : : : :*
epsilon%o?:*
is_training( 26
4model_1/model/batch_normalization/FusedBatchNormV3_1?
model_1/model/activation/Relu_1Relu8model_1/model/batch_normalization/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:?????????<- 2!
model_1/model/activation/Relu_1?
 model_1/model/dropout/Identity_1Identity-model_1/model/activation/Relu_1:activations:0*
T0*/
_output_shapes
:?????????<- 2"
 model_1/model/dropout/Identity_1?
%model_1/model/max_pooling2d/MaxPool_1MaxPool)model_1/model/dropout/Identity_1:output:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2'
%model_1/model/max_pooling2d/MaxPool_1?
.model_1/model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp5model_1_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.model_1/model/conv2d_1/Conv2D_1/ReadVariableOp?
model_1/model/conv2d_1/Conv2D_1Conv2D.model_1/model/max_pooling2d/MaxPool_1:output:06model_1/model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2!
model_1/model/conv2d_1/Conv2D_1?
/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp6model_1_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp?
 model_1/model/conv2d_1/BiasAdd_1BiasAdd(model_1/model/conv2d_1/Conv2D_1:output:07model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 model_1/model/conv2d_1/BiasAdd_1?
4model_1/model/batch_normalization_1/ReadVariableOp_2ReadVariableOp;model_1_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype026
4model_1/model/batch_normalization_1/ReadVariableOp_2?
4model_1/model/batch_normalization_1/ReadVariableOp_3ReadVariableOp=model_1_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype026
4model_1/model/batch_normalization_1/ReadVariableOp_3?
Emodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpLmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02G
Emodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp?
Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpNmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02I
Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?
6model_1/model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3)model_1/model/conv2d_1/BiasAdd_1:output:0<model_1/model/batch_normalization_1/ReadVariableOp_2:value:0<model_1/model/batch_normalization_1/ReadVariableOp_3:value:0Mmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Omodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 28
6model_1/model/batch_normalization_1/FusedBatchNormV3_1?
!model_1/model/activation_1/Relu_1Relu:model_1/model/batch_normalization_1/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:?????????@2#
!model_1/model/activation_1/Relu_1?
"model_1/model/dropout_1/Identity_1Identity/model_1/model/activation_1/Relu_1:activations:0*
T0*/
_output_shapes
:?????????@2$
"model_1/model/dropout_1/Identity_1?
'model_1/model/max_pooling2d_1/MaxPool_1MaxPool+model_1/model/dropout_1/Identity_1:output:0*/
_output_shapes
:?????????
@*
ksize
*
paddingVALID*
strides
2)
'model_1/model/max_pooling2d_1/MaxPool_1?
.model_1/model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp5model_1_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype020
.model_1/model/conv2d_2/Conv2D_1/ReadVariableOp?
model_1/model/conv2d_2/Conv2D_1Conv2D0model_1/model/max_pooling2d_1/MaxPool_1:output:06model_1/model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2!
model_1/model/conv2d_2/Conv2D_1?
/model_1/model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp6model_1_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/model_1/model/conv2d_2/BiasAdd_1/ReadVariableOp?
 model_1/model/conv2d_2/BiasAdd_1BiasAdd(model_1/model/conv2d_2/Conv2D_1:output:07model_1/model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2"
 model_1/model/conv2d_2/BiasAdd_1?
4model_1/model/batch_normalization_2/ReadVariableOp_2ReadVariableOp;model_1_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype026
4model_1/model/batch_normalization_2/ReadVariableOp_2?
4model_1/model/batch_normalization_2/ReadVariableOp_3ReadVariableOp=model_1_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype026
4model_1/model/batch_normalization_2/ReadVariableOp_3?
Emodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpLmodel_1_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Emodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp?
Gmodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpNmodel_1_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02I
Gmodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?
6model_1/model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV3)model_1/model/conv2d_2/BiasAdd_1:output:0<model_1/model/batch_normalization_2/ReadVariableOp_2:value:0<model_1/model/batch_normalization_2/ReadVariableOp_3:value:0Mmodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0Omodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 28
6model_1/model/batch_normalization_2/FusedBatchNormV3_1?
!model_1/model/activation_2/Relu_1Relu:model_1/model/batch_normalization_2/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:??????????2#
!model_1/model/activation_2/Relu_1?
"model_1/model/dropout_2/Identity_1Identity/model_1/model/activation_2/Relu_1:activations:0*
T0*0
_output_shapes
:??????????2$
"model_1/model/dropout_2/Identity_1?
'model_1/model/max_pooling2d_2/MaxPool_1MaxPool+model_1/model/dropout_2/Identity_1:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2)
'model_1/model/max_pooling2d_2/MaxPool_1?
?model_1/model/global_average_pooling2d/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2A
?model_1/model/global_average_pooling2d/Mean_1/reduction_indices?
-model_1/model/global_average_pooling2d/Mean_1Mean0model_1/model/max_pooling2d_2/MaxPool_1:output:0Hmodel_1/model/global_average_pooling2d/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2/
-model_1/model/global_average_pooling2d/Mean_1?
+model_1/model/dense/MatMul_1/ReadVariableOpReadVariableOp2model_1_model_dense_matmul_readvariableop_resource*
_output_shapes
:	?0*
dtype02-
+model_1/model/dense/MatMul_1/ReadVariableOp?
model_1/model/dense/MatMul_1MatMul6model_1/model/global_average_pooling2d/Mean_1:output:03model_1/model/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model_1/model/dense/MatMul_1?
,model_1/model/dense/BiasAdd_1/ReadVariableOpReadVariableOp3model_1_model_dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02.
,model_1/model/dense/BiasAdd_1/ReadVariableOp?
model_1/model/dense/BiasAdd_1BiasAdd&model_1/model/dense/MatMul_1:product:04model_1/model/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????02
model_1/model/dense/BiasAdd_1?
model_1/lambda/subSub$model_1/model/dense/BiasAdd:output:0&model_1/model/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????02
model_1/lambda/sub?
model_1/lambda/SquareSquaremodel_1/lambda/sub:z:0*
T0*'
_output_shapes
:?????????02
model_1/lambda/Square?
$model_1/lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2&
$model_1/lambda/Sum/reduction_indices?
model_1/lambda/SumSummodel_1/lambda/Square:y:0-model_1/lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(2
model_1/lambda/Sumy
model_1/lambda/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???32
model_1/lambda/Maximum/y?
model_1/lambda/MaximumMaximummodel_1/lambda/Sum:output:0!model_1/lambda/Maximum/y:output:0*
T0*'
_output_shapes
:?????????2
model_1/lambda/Maximumq
model_1/lambda/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model_1/lambda/Const?
model_1/lambda/Maximum_1Maximummodel_1/lambda/Maximum:z:0model_1/lambda/Const:output:0*
T0*'
_output_shapes
:?????????2
model_1/lambda/Maximum_1?
model_1/lambda/SqrtSqrtmodel_1/lambda/Maximum_1:z:0*
T0*'
_output_shapes
:?????????2
model_1/lambda/Sqrtr
IdentityIdentitymodel_1/lambda/Sqrt:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOpB^model_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOpD^model_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1D^model_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpF^model_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_11^model_1/model/batch_normalization/ReadVariableOp3^model_1/model/batch_normalization/ReadVariableOp_13^model_1/model/batch_normalization/ReadVariableOp_23^model_1/model/batch_normalization/ReadVariableOp_3D^model_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpF^model_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1F^model_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpH^model_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_13^model_1/model/batch_normalization_1/ReadVariableOp5^model_1/model/batch_normalization_1/ReadVariableOp_15^model_1/model/batch_normalization_1/ReadVariableOp_25^model_1/model/batch_normalization_1/ReadVariableOp_3D^model_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpF^model_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1F^model_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpH^model_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_13^model_1/model/batch_normalization_2/ReadVariableOp5^model_1/model/batch_normalization_2/ReadVariableOp_15^model_1/model/batch_normalization_2/ReadVariableOp_25^model_1/model/batch_normalization_2/ReadVariableOp_3,^model_1/model/conv2d/BiasAdd/ReadVariableOp.^model_1/model/conv2d/BiasAdd_1/ReadVariableOp+^model_1/model/conv2d/Conv2D/ReadVariableOp-^model_1/model/conv2d/Conv2D_1/ReadVariableOp.^model_1/model/conv2d_1/BiasAdd/ReadVariableOp0^model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp-^model_1/model/conv2d_1/Conv2D/ReadVariableOp/^model_1/model/conv2d_1/Conv2D_1/ReadVariableOp.^model_1/model/conv2d_2/BiasAdd/ReadVariableOp0^model_1/model/conv2d_2/BiasAdd_1/ReadVariableOp-^model_1/model/conv2d_2/Conv2D/ReadVariableOp/^model_1/model/conv2d_2/Conv2D_1/ReadVariableOp+^model_1/model/dense/BiasAdd/ReadVariableOp-^model_1/model/dense/BiasAdd_1/ReadVariableOp*^model_1/model/dense/MatMul/ReadVariableOp,^model_1/model/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????>/:?????????>/: : : : : : : : : : : : : : : : : : : : 2?
Amodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOpAmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp2?
Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12?
Cmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpCmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2?
Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12d
0model_1/model/batch_normalization/ReadVariableOp0model_1/model/batch_normalization/ReadVariableOp2h
2model_1/model/batch_normalization/ReadVariableOp_12model_1/model/batch_normalization/ReadVariableOp_12h
2model_1/model/batch_normalization/ReadVariableOp_22model_1/model/batch_normalization/ReadVariableOp_22h
2model_1/model/batch_normalization/ReadVariableOp_32model_1/model/batch_normalization/ReadVariableOp_32?
Cmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpCmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2?
Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12?
Emodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpEmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2?
Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12h
2model_1/model/batch_normalization_1/ReadVariableOp2model_1/model/batch_normalization_1/ReadVariableOp2l
4model_1/model/batch_normalization_1/ReadVariableOp_14model_1/model/batch_normalization_1/ReadVariableOp_12l
4model_1/model/batch_normalization_1/ReadVariableOp_24model_1/model/batch_normalization_1/ReadVariableOp_22l
4model_1/model/batch_normalization_1/ReadVariableOp_34model_1/model/batch_normalization_1/ReadVariableOp_32?
Cmodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpCmodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Emodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Emodel_1/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12?
Emodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpEmodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2?
Gmodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1Gmodel_1/model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12h
2model_1/model/batch_normalization_2/ReadVariableOp2model_1/model/batch_normalization_2/ReadVariableOp2l
4model_1/model/batch_normalization_2/ReadVariableOp_14model_1/model/batch_normalization_2/ReadVariableOp_12l
4model_1/model/batch_normalization_2/ReadVariableOp_24model_1/model/batch_normalization_2/ReadVariableOp_22l
4model_1/model/batch_normalization_2/ReadVariableOp_34model_1/model/batch_normalization_2/ReadVariableOp_32Z
+model_1/model/conv2d/BiasAdd/ReadVariableOp+model_1/model/conv2d/BiasAdd/ReadVariableOp2^
-model_1/model/conv2d/BiasAdd_1/ReadVariableOp-model_1/model/conv2d/BiasAdd_1/ReadVariableOp2X
*model_1/model/conv2d/Conv2D/ReadVariableOp*model_1/model/conv2d/Conv2D/ReadVariableOp2\
,model_1/model/conv2d/Conv2D_1/ReadVariableOp,model_1/model/conv2d/Conv2D_1/ReadVariableOp2^
-model_1/model/conv2d_1/BiasAdd/ReadVariableOp-model_1/model/conv2d_1/BiasAdd/ReadVariableOp2b
/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp2\
,model_1/model/conv2d_1/Conv2D/ReadVariableOp,model_1/model/conv2d_1/Conv2D/ReadVariableOp2`
.model_1/model/conv2d_1/Conv2D_1/ReadVariableOp.model_1/model/conv2d_1/Conv2D_1/ReadVariableOp2^
-model_1/model/conv2d_2/BiasAdd/ReadVariableOp-model_1/model/conv2d_2/BiasAdd/ReadVariableOp2b
/model_1/model/conv2d_2/BiasAdd_1/ReadVariableOp/model_1/model/conv2d_2/BiasAdd_1/ReadVariableOp2\
,model_1/model/conv2d_2/Conv2D/ReadVariableOp,model_1/model/conv2d_2/Conv2D/ReadVariableOp2`
.model_1/model/conv2d_2/Conv2D_1/ReadVariableOp.model_1/model/conv2d_2/Conv2D_1/ReadVariableOp2X
*model_1/model/dense/BiasAdd/ReadVariableOp*model_1/model/dense/BiasAdd/ReadVariableOp2\
,model_1/model/dense/BiasAdd_1/ReadVariableOp,model_1/model/dense/BiasAdd_1/ReadVariableOp2V
)model_1/model/dense/MatMul/ReadVariableOp)model_1/model/dense/MatMul/ReadVariableOp2Z
+model_1/model/dense/MatMul_1/ReadVariableOp+model_1/model/dense/MatMul_1/ReadVariableOp:X T
/
_output_shapes
:?????????>/
!
_user_specified_name	input_1:XT
/
_output_shapes
:?????????>/
!
_user_specified_name	input_2
??
?#
!__inference__traced_restore_10667
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: :
 assignvariableop_5_conv2d_kernel: ,
assignvariableop_6_conv2d_bias: :
,assignvariableop_7_batch_normalization_gamma: 9
+assignvariableop_8_batch_normalization_beta: @
2assignvariableop_9_batch_normalization_moving_mean: E
7assignvariableop_10_batch_normalization_moving_variance: =
#assignvariableop_11_conv2d_1_kernel: @/
!assignvariableop_12_conv2d_1_bias:@=
/assignvariableop_13_batch_normalization_1_gamma:@<
.assignvariableop_14_batch_normalization_1_beta:@C
5assignvariableop_15_batch_normalization_1_moving_mean:@G
9assignvariableop_16_batch_normalization_1_moving_variance:@>
#assignvariableop_17_conv2d_2_kernel:@?0
!assignvariableop_18_conv2d_2_bias:	?>
/assignvariableop_19_batch_normalization_2_gamma:	?=
.assignvariableop_20_batch_normalization_2_beta:	?D
5assignvariableop_21_batch_normalization_2_moving_mean:	?H
9assignvariableop_22_batch_normalization_2_moving_variance:	?3
 assignvariableop_23_dense_kernel:	?0,
assignvariableop_24_dense_bias:0#
assignvariableop_25_total: #
assignvariableop_26_count: B
(assignvariableop_27_adam_conv2d_kernel_m: 4
&assignvariableop_28_adam_conv2d_bias_m: B
4assignvariableop_29_adam_batch_normalization_gamma_m: A
3assignvariableop_30_adam_batch_normalization_beta_m: D
*assignvariableop_31_adam_conv2d_1_kernel_m: @6
(assignvariableop_32_adam_conv2d_1_bias_m:@D
6assignvariableop_33_adam_batch_normalization_1_gamma_m:@C
5assignvariableop_34_adam_batch_normalization_1_beta_m:@E
*assignvariableop_35_adam_conv2d_2_kernel_m:@?7
(assignvariableop_36_adam_conv2d_2_bias_m:	?E
6assignvariableop_37_adam_batch_normalization_2_gamma_m:	?D
5assignvariableop_38_adam_batch_normalization_2_beta_m:	?:
'assignvariableop_39_adam_dense_kernel_m:	?03
%assignvariableop_40_adam_dense_bias_m:0B
(assignvariableop_41_adam_conv2d_kernel_v: 4
&assignvariableop_42_adam_conv2d_bias_v: B
4assignvariableop_43_adam_batch_normalization_gamma_v: A
3assignvariableop_44_adam_batch_normalization_beta_v: D
*assignvariableop_45_adam_conv2d_1_kernel_v: @6
(assignvariableop_46_adam_conv2d_1_bias_v:@D
6assignvariableop_47_adam_batch_normalization_1_gamma_v:@C
5assignvariableop_48_adam_batch_normalization_1_beta_v:@E
*assignvariableop_49_adam_conv2d_2_kernel_v:@?7
(assignvariableop_50_adam_conv2d_2_bias_v:	?E
6assignvariableop_51_adam_batch_normalization_2_gamma_v:	?D
5assignvariableop_52_adam_batch_normalization_2_beta_v:	?:
'assignvariableop_53_adam_dense_kernel_v:	?03
%assignvariableop_54_adam_dense_bias_v:0
identity_56??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
value?B?8B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*?
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv2d_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp,assignvariableop_7_batch_normalization_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp+assignvariableop_8_batch_normalization_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp2assignvariableop_9_batch_normalization_moving_meanIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_moving_varianceIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_conv2d_1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_batch_normalization_1_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp.assignvariableop_14_batch_normalization_1_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp5assignvariableop_15_batch_normalization_1_moving_meanIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp9assignvariableop_16_batch_normalization_1_moving_varianceIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp#assignvariableop_17_conv2d_2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp!assignvariableop_18_conv2d_2_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp/assignvariableop_19_batch_normalization_2_gammaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp.assignvariableop_20_batch_normalization_2_betaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp5assignvariableop_21_batch_normalization_2_moving_meanIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp9assignvariableop_22_batch_normalization_2_moving_varianceIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp assignvariableop_23_dense_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_dense_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv2d_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_conv2d_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_batch_normalization_gamma_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp3assignvariableop_30_adam_batch_normalization_beta_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_1_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_1_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_batch_normalization_1_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp5assignvariableop_34_adam_batch_normalization_1_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_batch_normalization_2_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp5assignvariableop_38_adam_batch_normalization_2_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dense_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_conv2d_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_conv2d_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp4assignvariableop_43_adam_batch_normalization_gamma_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp3assignvariableop_44_adam_batch_normalization_beta_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_conv2d_1_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_conv2d_1_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_batch_normalization_1_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp5assignvariableop_48_adam_batch_normalization_1_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_conv2d_2_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_conv2d_2_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_batch_normalization_2_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp5assignvariableop_52_adam_batch_normalization_2_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_dense_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp%assignvariableop_54_adam_dense_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_549
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_55f
Identity_56IdentityIdentity_55:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_56?

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_56Identity_56:output:0*?
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9951

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????>/
C
input_28
serving_default_input_2:0?????????>/:
lambda0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	optimizer
regularization_losses
	variables
trainable_variables
		keras_api


signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
layer-8
layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer-15
layer-16
layer_with_weights-6
layer-17
regularization_losses
	variables
trainable_variables
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
?
!regularization_losses
"	variables
#trainable_variables
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
%iter

&beta_1

'beta_2
	(decay
)learning_rate*m?+m?,m?-m?0m?1m?2m?3m?6m?7m?8m?9m?<m?=m?*v?+v?,v?-v?0v?1v?2v?3v?6v?7v?8v?9v?<v?=v?"
	optimizer
 "
trackable_list_wrapper
?
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19"
trackable_list_wrapper
?
*0
+1
,2
-3
04
15
26
37
68
79
810
911
<12
=13"
trackable_list_wrapper
?
regularization_losses
>non_trainable_variables
	variables
?metrics
@layer_regularization_losses
trainable_variables

Alayers
Blayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
"
_tf_keras_input_layer
?

*kernel
+bias
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Gaxis
	,gamma
-beta
.moving_mean
/moving_variance
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Lregularization_losses
M	variables
Ntrainable_variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
\axis
	2gamma
3beta
4moving_mean
5moving_variance
]regularization_losses
^	variables
_trainable_variables
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
eregularization_losses
f	variables
gtrainable_variables
h	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

6kernel
7bias
mregularization_losses
n	variables
otrainable_variables
p	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
qaxis
	8gamma
9beta
:moving_mean
;moving_variance
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
vregularization_losses
w	variables
xtrainable_variables
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
zregularization_losses
{	variables
|trainable_variables
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
~regularization_losses
	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

<kernel
=bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
?
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19"
trackable_list_wrapper
?
*0
+1
,2
-3
04
15
26
37
68
79
810
911
<12
=13"
trackable_list_wrapper
?
regularization_losses
?non_trainable_variables
	variables
?metrics
 ?layer_regularization_losses
trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
!regularization_losses
?non_trainable_variables
"	variables
?metrics
 ?layer_regularization_losses
#trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
':% 2conv2d/kernel
: 2conv2d/bias
':% 2batch_normalization/gamma
&:$ 2batch_normalization/beta
/:-  (2batch_normalization/moving_mean
3:1  (2#batch_normalization/moving_variance
):' @2conv2d_1/kernel
:@2conv2d_1/bias
):'@2batch_normalization_1/gamma
(:&@2batch_normalization_1/beta
1:/@ (2!batch_normalization_1/moving_mean
5:3@ (2%batch_normalization_1/moving_variance
*:(@?2conv2d_2/kernel
:?2conv2d_2/bias
*:(?2batch_normalization_2/gamma
):'?2batch_normalization_2/beta
2:0? (2!batch_normalization_2/moving_mean
6:4? (2%batch_normalization_2/moving_variance
:	?02dense/kernel
:02
dense/bias
J
.0
/1
42
53
:4
;5"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
Cregularization_losses
?non_trainable_variables
D	variables
?metrics
 ?layer_regularization_losses
Etrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
,0
-1
.2
/3"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?
Hregularization_losses
?non_trainable_variables
I	variables
?metrics
 ?layer_regularization_losses
Jtrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lregularization_losses
?non_trainable_variables
M	variables
?metrics
 ?layer_regularization_losses
Ntrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Pregularization_losses
?non_trainable_variables
Q	variables
?metrics
 ?layer_regularization_losses
Rtrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tregularization_losses
?non_trainable_variables
U	variables
?metrics
 ?layer_regularization_losses
Vtrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
Xregularization_losses
?non_trainable_variables
Y	variables
?metrics
 ?layer_regularization_losses
Ztrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
20
31
42
53"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
]regularization_losses
?non_trainable_variables
^	variables
?metrics
 ?layer_regularization_losses
_trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
aregularization_losses
?non_trainable_variables
b	variables
?metrics
 ?layer_regularization_losses
ctrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
eregularization_losses
?non_trainable_variables
f	variables
?metrics
 ?layer_regularization_losses
gtrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
iregularization_losses
?non_trainable_variables
j	variables
?metrics
 ?layer_regularization_losses
ktrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?
mregularization_losses
?non_trainable_variables
n	variables
?metrics
 ?layer_regularization_losses
otrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
80
91
:2
;3"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
rregularization_losses
?non_trainable_variables
s	variables
?metrics
 ?layer_regularization_losses
ttrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
vregularization_losses
?non_trainable_variables
w	variables
?metrics
 ?layer_regularization_losses
xtrainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
zregularization_losses
?non_trainable_variables
{	variables
?metrics
 ?layer_regularization_losses
|trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~regularization_losses
?non_trainable_variables
	variables
?metrics
 ?layer_regularization_losses
?trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?regularization_losses
?non_trainable_variables
?	variables
?metrics
 ?layer_regularization_losses
?trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
?regularization_losses
?non_trainable_variables
?	variables
?metrics
 ?layer_regularization_losses
?trainable_variables
?layers
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
J
.0
/1
42
53
:4
;5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:* 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
,:* 2 Adam/batch_normalization/gamma/m
+:) 2Adam/batch_normalization/beta/m
.:, @2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
.:,@2"Adam/batch_normalization_1/gamma/m
-:+@2!Adam/batch_normalization_1/beta/m
/:-@?2Adam/conv2d_2/kernel/m
!:?2Adam/conv2d_2/bias/m
/:-?2"Adam/batch_normalization_2/gamma/m
.:,?2!Adam/batch_normalization_2/beta/m
$:"	?02Adam/dense/kernel/m
:02Adam/dense/bias/m
,:* 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
,:* 2 Adam/batch_normalization/gamma/v
+:) 2Adam/batch_normalization/beta/v
.:, @2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
.:,@2"Adam/batch_normalization_1/gamma/v
-:+@2!Adam/batch_normalization_1/beta/v
/:-@?2Adam/conv2d_2/kernel/v
!:?2Adam/conv2d_2/bias/v
/:-?2"Adam/batch_normalization_2/gamma/v
.:,?2!Adam/batch_normalization_2/beta/v
$:"	?02Adam/dense/kernel/v
:02Adam/dense/bias/v
?B?
__inference__wrapped_model_7037input_1input_2"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_model_1_layer_call_fn_8496
&__inference_model_1_layer_call_fn_8965
&__inference_model_1_layer_call_fn_9011
&__inference_model_1_layer_call_fn_8729?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_model_1_layer_call_and_return_conditional_losses_9159
A__inference_model_1_layer_call_and_return_conditional_losses_9349
A__inference_model_1_layer_call_and_return_conditional_losses_8797
A__inference_model_1_layer_call_and_return_conditional_losses_8865?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
$__inference_model_layer_call_fn_7768
$__inference_model_layer_call_fn_9394
$__inference_model_layer_call_fn_9439
$__inference_model_layer_call_fn_8243?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
?__inference_model_layer_call_and_return_conditional_losses_9520
?__inference_model_layer_call_and_return_conditional_losses_9622
?__inference_model_layer_call_and_return_conditional_losses_8304
?__inference_model_layer_call_and_return_conditional_losses_8365?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_lambda_layer_call_fn_9628
%__inference_lambda_layer_call_fn_9634?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_lambda_layer_call_and_return_conditional_losses_9648
@__inference_lambda_layer_call_and_return_conditional_losses_9662?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference_signature_wrapper_8919input_1input_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_conv2d_layer_call_fn_9671?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_conv2d_layer_call_and_return_conditional_losses_9681?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_batch_normalization_layer_call_fn_9694
2__inference_batch_normalization_layer_call_fn_9707
2__inference_batch_normalization_layer_call_fn_9720
2__inference_batch_normalization_layer_call_fn_9733?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9751
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9769
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9787
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9805?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_activation_layer_call_fn_9810?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_activation_layer_call_and_return_conditional_losses_9815?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dropout_layer_call_fn_9820
&__inference_dropout_layer_call_fn_9825?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_dropout_layer_call_and_return_conditional_losses_9830
A__inference_dropout_layer_call_and_return_conditional_losses_9842?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_max_pooling2d_layer_call_fn_9847
,__inference_max_pooling2d_layer_call_fn_9852?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9857
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9862?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_conv2d_1_layer_call_fn_9871?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_conv2d_1_layer_call_and_return_conditional_losses_9881?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_batch_normalization_1_layer_call_fn_9894
4__inference_batch_normalization_1_layer_call_fn_9907
4__inference_batch_normalization_1_layer_call_fn_9920
4__inference_batch_normalization_1_layer_call_fn_9933?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9951
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9969
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9987
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_10005?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_activation_1_layer_call_fn_10010?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_activation_1_layer_call_and_return_conditional_losses_10015?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_1_layer_call_fn_10020
)__inference_dropout_1_layer_call_fn_10025?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_1_layer_call_and_return_conditional_losses_10030
D__inference_dropout_1_layer_call_and_return_conditional_losses_10042?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_max_pooling2d_1_layer_call_fn_10047
/__inference_max_pooling2d_1_layer_call_fn_10052?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10057
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10062?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv2d_2_layer_call_fn_10071?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_10081?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
5__inference_batch_normalization_2_layer_call_fn_10094
5__inference_batch_normalization_2_layer_call_fn_10107
5__inference_batch_normalization_2_layer_call_fn_10120
5__inference_batch_normalization_2_layer_call_fn_10133?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10151
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10169
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10187
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10205?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_activation_2_layer_call_fn_10210?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_activation_2_layer_call_and_return_conditional_losses_10215?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_2_layer_call_fn_10220
)__inference_dropout_2_layer_call_fn_10225?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_2_layer_call_and_return_conditional_losses_10230
D__inference_dropout_2_layer_call_and_return_conditional_losses_10242?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_max_pooling2d_2_layer_call_fn_10247
/__inference_max_pooling2d_2_layer_call_fn_10252?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10257
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10262?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_global_average_pooling2d_layer_call_fn_10267
8__inference_global_average_pooling2d_layer_call_fn_10272?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_10278
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_10284?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_10293?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_10303?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_7037?*+,-./0123456789:;<=h?e
^?[
Y?V
)?&
input_1?????????>/
)?&
input_2?????????>/
? "/?,
*
lambda ?
lambda??????????
G__inference_activation_1_layer_call_and_return_conditional_losses_10015h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
,__inference_activation_1_layer_call_fn_10010[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
G__inference_activation_2_layer_call_and_return_conditional_losses_10215j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_activation_2_layer_call_fn_10210]8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_activation_layer_call_and_return_conditional_losses_9815h7?4
-?*
(?%
inputs?????????<- 
? "-?*
#? 
0?????????<- 
? ?
)__inference_activation_layer_call_fn_9810[7?4
-?*
(?%
inputs?????????<- 
? " ??????????<- ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_10005r2345;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9951?2345M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9969?2345M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
O__inference_batch_normalization_1_layer_call_and_return_conditional_losses_9987r2345;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
4__inference_batch_normalization_1_layer_call_fn_9894?2345M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
4__inference_batch_normalization_1_layer_call_fn_9907?2345M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
4__inference_batch_normalization_1_layer_call_fn_9920e2345;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
4__inference_batch_normalization_1_layer_call_fn_9933e2345;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10151?89:;N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10169?89:;N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10187t89:;<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_10205t89:;<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
5__inference_batch_normalization_2_layer_call_fn_10094?89:;N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
5__inference_batch_normalization_2_layer_call_fn_10107?89:;N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
5__inference_batch_normalization_2_layer_call_fn_10120g89:;<?9
2?/
)?&
inputs??????????
p 
? "!????????????
5__inference_batch_normalization_2_layer_call_fn_10133g89:;<?9
2?/
)?&
inputs??????????
p
? "!????????????
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9751?,-./M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9769?,-./M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9787r,-./;?8
1?.
(?%
inputs?????????<- 
p 
? "-?*
#? 
0?????????<- 
? ?
M__inference_batch_normalization_layer_call_and_return_conditional_losses_9805r,-./;?8
1?.
(?%
inputs?????????<- 
p
? "-?*
#? 
0?????????<- 
? ?
2__inference_batch_normalization_layer_call_fn_9694?,-./M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
2__inference_batch_normalization_layer_call_fn_9707?,-./M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
2__inference_batch_normalization_layer_call_fn_9720e,-./;?8
1?.
(?%
inputs?????????<- 
p 
? " ??????????<- ?
2__inference_batch_normalization_layer_call_fn_9733e,-./;?8
1?.
(?%
inputs?????????<- 
p
? " ??????????<- ?
B__inference_conv2d_1_layer_call_and_return_conditional_losses_9881l017?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
'__inference_conv2d_1_layer_call_fn_9871_017?4
-?*
(?%
inputs????????? 
? " ??????????@?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_10081m677?4
-?*
(?%
inputs?????????
@
? ".?+
$?!
0??????????
? ?
(__inference_conv2d_2_layer_call_fn_10071`677?4
-?*
(?%
inputs?????????
@
? "!????????????
@__inference_conv2d_layer_call_and_return_conditional_losses_9681l*+7?4
-?*
(?%
inputs?????????>/
? "-?*
#? 
0?????????<- 
? ?
%__inference_conv2d_layer_call_fn_9671_*+7?4
-?*
(?%
inputs?????????>/
? " ??????????<- ?
@__inference_dense_layer_call_and_return_conditional_losses_10303]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????0
? y
%__inference_dense_layer_call_fn_10293P<=0?-
&?#
!?
inputs??????????
? "??????????0?
D__inference_dropout_1_layer_call_and_return_conditional_losses_10030l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_10042l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
)__inference_dropout_1_layer_call_fn_10020_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
)__inference_dropout_1_layer_call_fn_10025_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
D__inference_dropout_2_layer_call_and_return_conditional_losses_10230n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
D__inference_dropout_2_layer_call_and_return_conditional_losses_10242n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
)__inference_dropout_2_layer_call_fn_10220a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
)__inference_dropout_2_layer_call_fn_10225a<?9
2?/
)?&
inputs??????????
p
? "!????????????
A__inference_dropout_layer_call_and_return_conditional_losses_9830l;?8
1?.
(?%
inputs?????????<- 
p 
? "-?*
#? 
0?????????<- 
? ?
A__inference_dropout_layer_call_and_return_conditional_losses_9842l;?8
1?.
(?%
inputs?????????<- 
p
? "-?*
#? 
0?????????<- 
? ?
&__inference_dropout_layer_call_fn_9820_;?8
1?.
(?%
inputs?????????<- 
p 
? " ??????????<- ?
&__inference_dropout_layer_call_fn_9825_;?8
1?.
(?%
inputs?????????<- 
p
? " ??????????<- ?
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_10278?R?O
H?E
C?@
inputs4????????????????????????????????????
? ".?+
$?!
0??????????????????
? ?
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_10284b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
8__inference_global_average_pooling2d_layer_call_fn_10267wR?O
H?E
C?@
inputs4????????????????????????????????????
? "!????????????????????
8__inference_global_average_pooling2d_layer_call_fn_10272U8?5
.?+
)?&
inputs??????????
? "????????????
@__inference_lambda_layer_call_and_return_conditional_losses_9648?b?_
X?U
K?H
"?
inputs/0?????????0
"?
inputs/1?????????0

 
p 
? "%?"
?
0?????????
? ?
@__inference_lambda_layer_call_and_return_conditional_losses_9662?b?_
X?U
K?H
"?
inputs/0?????????0
"?
inputs/1?????????0

 
p
? "%?"
?
0?????????
? ?
%__inference_lambda_layer_call_fn_9628~b?_
X?U
K?H
"?
inputs/0?????????0
"?
inputs/1?????????0

 
p 
? "???????????
%__inference_lambda_layer_call_fn_9634~b?_
X?U
K?H
"?
inputs/0?????????0
"?
inputs/1?????????0

 
p
? "???????????
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10057?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_10062h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????
@
? ?
/__inference_max_pooling2d_1_layer_call_fn_10047?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
/__inference_max_pooling2d_1_layer_call_fn_10052[7?4
-?*
(?%
inputs?????????@
? " ??????????
@?
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10257?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_10262j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
/__inference_max_pooling2d_2_layer_call_fn_10247?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
/__inference_max_pooling2d_2_layer_call_fn_10252]8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9857?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_9862h7?4
-?*
(?%
inputs?????????<- 
? "-?*
#? 
0????????? 
? ?
,__inference_max_pooling2d_layer_call_fn_9847?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
,__inference_max_pooling2d_layer_call_fn_9852[7?4
-?*
(?%
inputs?????????<- 
? " ?????????? ?
A__inference_model_1_layer_call_and_return_conditional_losses_8797?*+,-./0123456789:;<=p?m
f?c
Y?V
)?&
input_1?????????>/
)?&
input_2?????????>/
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_8865?*+,-./0123456789:;<=p?m
f?c
Y?V
)?&
input_1?????????>/
)?&
input_2?????????>/
p

 
? "%?"
?
0?????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_9159?*+,-./0123456789:;<=r?o
h?e
[?X
*?'
inputs/0?????????>/
*?'
inputs/1?????????>/
p 

 
? "%?"
?
0?????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_9349?*+,-./0123456789:;<=r?o
h?e
[?X
*?'
inputs/0?????????>/
*?'
inputs/1?????????>/
p

 
? "%?"
?
0?????????
? ?
&__inference_model_1_layer_call_fn_8496?*+,-./0123456789:;<=p?m
f?c
Y?V
)?&
input_1?????????>/
)?&
input_2?????????>/
p 

 
? "???????????
&__inference_model_1_layer_call_fn_8729?*+,-./0123456789:;<=p?m
f?c
Y?V
)?&
input_1?????????>/
)?&
input_2?????????>/
p

 
? "???????????
&__inference_model_1_layer_call_fn_8965?*+,-./0123456789:;<=r?o
h?e
[?X
*?'
inputs/0?????????>/
*?'
inputs/1?????????>/
p 

 
? "???????????
&__inference_model_1_layer_call_fn_9011?*+,-./0123456789:;<=r?o
h?e
[?X
*?'
inputs/0?????????>/
*?'
inputs/1?????????>/
p

 
? "???????????
?__inference_model_layer_call_and_return_conditional_losses_8304*+,-./0123456789:;<=@?=
6?3
)?&
input_3?????????>/
p 

 
? "%?"
?
0?????????0
? ?
?__inference_model_layer_call_and_return_conditional_losses_8365*+,-./0123456789:;<=@?=
6?3
)?&
input_3?????????>/
p

 
? "%?"
?
0?????????0
? ?
?__inference_model_layer_call_and_return_conditional_losses_9520~*+,-./0123456789:;<=??<
5?2
(?%
inputs?????????>/
p 

 
? "%?"
?
0?????????0
? ?
?__inference_model_layer_call_and_return_conditional_losses_9622~*+,-./0123456789:;<=??<
5?2
(?%
inputs?????????>/
p

 
? "%?"
?
0?????????0
? ?
$__inference_model_layer_call_fn_7768r*+,-./0123456789:;<=@?=
6?3
)?&
input_3?????????>/
p 

 
? "??????????0?
$__inference_model_layer_call_fn_8243r*+,-./0123456789:;<=@?=
6?3
)?&
input_3?????????>/
p

 
? "??????????0?
$__inference_model_layer_call_fn_9394q*+,-./0123456789:;<=??<
5?2
(?%
inputs?????????>/
p 

 
? "??????????0?
$__inference_model_layer_call_fn_9439q*+,-./0123456789:;<=??<
5?2
(?%
inputs?????????>/
p

 
? "??????????0?
"__inference_signature_wrapper_8919?*+,-./0123456789:;<=y?v
? 
o?l
4
input_1)?&
input_1?????????>/
4
input_2)?&
input_2?????????>/"/?,
*
lambda ?
lambda?????????