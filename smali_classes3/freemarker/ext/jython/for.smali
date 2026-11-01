.class Lfreemarker/ext/jython/for;
.super Lfreemarker/ext/util/if;
.source "SourceFile"


# instance fields
.field private final new:Lfreemarker/ext/jython/goto;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jython/goto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/util/if;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jython/for;->new:Lfreemarker/ext/jython/goto;

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .locals 4

    .line 1
    sget-object v0, Lfreemarker/ext/jython/else;->do:Lfreemarker/ext/jython/case;

    .line 2
    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/case;->if(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {v0, p1}, Lfreemarker/ext/jython/case;->for(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lfreemarker/template/TemplateModel;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lfreemarker/template/TemplateModel;

    return-object v0

    .line 6
    :cond_0
    instance-of v1, v0, Ljava/util/Map;

    .line 7
    instance-of v3, v0, Ljava/util/Date;

    if-eqz v3, :cond_1

    .line 8
    new-instance p1, Lfreemarker/ext/beans/throw;

    check-cast v0, Ljava/util/Date;

    invoke-static {}, Lfreemarker/ext/beans/try;->super()Lfreemarker/ext/beans/try;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/beans/throw;-><init>(Ljava/util/Date;Lfreemarker/ext/beans/try;)V

    return-object p1

    .line 9
    :cond_1
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 10
    instance-of v3, v0, Ljava/util/List;

    if-nez v3, :cond_2

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    move v2, v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    :cond_4
    const/4 v0, 0x0

    .line 12
    :goto_0
    instance-of v1, p1, Lorg/python/core/PyObject;

    if-nez v1, :cond_5

    .line 13
    invoke-static {p1}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p1

    :cond_5
    if-nez v2, :cond_c

    .line 14
    instance-of v1, p1, Lorg/python/core/PyDictionary;

    if-nez v1, :cond_c

    instance-of v1, p1, Lorg/python/core/PyStringMap;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    if-nez v0, :cond_b

    .line 15
    instance-of v0, p1, Lorg/python/core/PySequence;

    if-eqz v0, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    instance-of v0, p1, Lorg/python/core/PyInteger;

    if-nez v0, :cond_a

    instance-of v0, p1, Lorg/python/core/PyLong;

    if-nez v0, :cond_a

    instance-of v0, p1, Lorg/python/core/PyFloat;

    if-eqz v0, :cond_8

    goto :goto_1

    .line 17
    :cond_8
    instance-of v0, p1, Lorg/python/core/PyNone;

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    return-object p1

    .line 18
    :cond_9
    sget-object v0, Lfreemarker/ext/jython/if;->for:Lfreemarker/ext/util/ModelFactory;

    iget-object v1, p0, Lfreemarker/ext/jython/for;->new:Lfreemarker/ext/jython/goto;

    invoke-interface {v0, p1, v1}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 19
    :cond_a
    :goto_1
    sget-object v0, Lfreemarker/ext/jython/new;->new:Lfreemarker/ext/util/ModelFactory;

    iget-object v1, p0, Lfreemarker/ext/jython/for;->new:Lfreemarker/ext/jython/goto;

    invoke-interface {v0, p1, v1}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 20
    :cond_b
    :goto_2
    sget-object v0, Lfreemarker/ext/jython/try;->new:Lfreemarker/ext/util/ModelFactory;

    iget-object v1, p0, Lfreemarker/ext/jython/for;->new:Lfreemarker/ext/jython/goto;

    invoke-interface {v0, p1, v1}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 21
    :cond_c
    :goto_3
    sget-object v0, Lfreemarker/ext/jython/do;->else:Lfreemarker/ext/util/ModelFactory;

    iget-object v1, p0, Lfreemarker/ext/jython/for;->new:Lfreemarker/ext/jython/goto;

    invoke-interface {v0, p1, v1}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public try(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
