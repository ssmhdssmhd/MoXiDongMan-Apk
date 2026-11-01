.class public Lfreemarker/ext/jython/break;
.super Lfreemarker/ext/jython/case;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/jython/case;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/python/core/PyObject;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/python/core/PyObject;->getType()Lorg/python/core/PyType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/python/core/PyType;->getFullName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public for(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lorg/python/core/PyJavaInstance;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/python/core/PyJavaInstance;->__tojava__(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lorg/python/core/PyJavaInstance;

    return p1
.end method
