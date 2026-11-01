.class Lfreemarker/ext/jython/goto$do;
.super Lorg/python/core/PyObject;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jython/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Lfreemarker/template/TemplateModel;

.field public final synthetic if:Lfreemarker/ext/jython/goto;


# direct methods
.method public constructor <init>(Lfreemarker/ext/jython/goto;Lfreemarker/template/TemplateModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jython/goto$do;->if:Lfreemarker/ext/jython/goto;

    invoke-direct {p0}, Lorg/python/core/PyObject;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/ext/jython/goto$do;->do:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method private else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jython/goto$do;->do:Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public case()Z
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/goto$do;->do:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 5
    :cond_2
    instance-of v1, v0, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModel;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v2

    return v0

    :cond_3
    return v3

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object v0

    throw v0
.end method

.method public do([Lorg/python/core/PyObject;[Ljava/lang/String;)Lorg/python/core/PyObject;
    .locals 4

    .line 1
    iget-object p2, p0, Lfreemarker/ext/jython/goto$do;->do:Lfreemarker/template/TemplateModel;

    instance-of v0, p2, Lfreemarker/template/TemplateMethodModel;

    if-eqz v0, :cond_3

    .line 2
    instance-of p2, p2, Lfreemarker/template/TemplateMethodModelEx;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    if-eqz p2, :cond_0

    .line 5
    iget-object v2, p0, Lfreemarker/ext/jython/goto$do;->if:Lfreemarker/ext/jython/goto;

    aget-object v3, p1, v1

    .line 6
    invoke-virtual {v2, v3}, Lfreemarker/ext/jython/goto;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    aget-object v2, p1, v1

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lfreemarker/ext/jython/goto$do;->if:Lfreemarker/ext/jython/goto;

    iget-object p2, p0, Lfreemarker/ext/jython/goto$do;->do:Lfreemarker/template/TemplateModel;

    check-cast p2, Lfreemarker/template/TemplateMethodModelEx;

    invoke-interface {p2, v0}, Lfreemarker/template/TemplateMethodModelEx;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/template/TemplateModel;

    invoke-virtual {p1, p2}, Lfreemarker/ext/jython/goto;->new(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "call of non-method model ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lfreemarker/ext/jython/goto$do;->else()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->TypeError(Ljava/lang/String;)Lorg/python/core/PyException;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public for(Ljava/lang/String;)Lorg/python/core/PyObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jython/goto$do;->do:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/jython/goto$do;->if:Lfreemarker/ext/jython/goto;

    check-cast v0, Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfreemarker/ext/jython/goto;->new(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "item lookup on non-hash model ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lfreemarker/ext/jython/goto$do;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->TypeError(Ljava/lang/String;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1
.end method

.method public getTemplateModel()Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jython/goto$do;->do:Lfreemarker/template/TemplateModel;

    return-object v0
.end method

.method public if(I)Lorg/python/core/PyObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jython/goto$do;->do:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/jython/goto$do;->if:Lfreemarker/ext/jython/goto;

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0, p1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfreemarker/ext/jython/goto;->new(Lfreemarker/template/TemplateModel;)Lorg/python/core/PyObject;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "item lookup on non-sequence model ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lfreemarker/ext/jython/goto$do;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/python/core/Py;->TypeError(Ljava/lang/String;)Lorg/python/core/PyException;

    move-result-object p1

    throw p1
.end method

.method public new(Lorg/python/core/PyObject;)Lorg/python/core/PyObject;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/python/core/PyInteger;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/python/core/PyInteger;

    invoke-virtual {p1}, Lorg/python/core/PyInteger;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jython/goto$do;->if(I)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/jython/goto$do;->for(Ljava/lang/String;)Lorg/python/core/PyObject;

    move-result-object p1

    return-object p1
.end method

.method public try()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/jython/goto$do;->do:Lfreemarker/template/TemplateModel;

    instance-of v1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    instance-of v1, v0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lorg/python/core/Py;->JavaError(Ljava/lang/Throwable;)Lorg/python/core/PyException;

    move-result-object v0

    throw v0
.end method
