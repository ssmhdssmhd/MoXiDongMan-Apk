.class public Lfreemarker/ext/beans/return;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelAdapter;


# instance fields
.field private final do:Lfreemarker/ext/beans/try;

.field private for:Ljava/util/Set;

.field private final if:Lfreemarker/template/TemplateHashModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/return;->if:Lfreemarker/template/TemplateHashModel;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/return;->do:Lfreemarker/ext/beans/try;

    return-void
.end method

.method public static synthetic do(Lfreemarker/ext/beans/return;)Lfreemarker/template/TemplateHashModelEx;
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/return;->for()Lfreemarker/template/TemplateHashModelEx;

    move-result-object p0

    return-object p0
.end method

.method private for()Lfreemarker/template/TemplateHashModelEx;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/return;->if:Lfreemarker/template/TemplateHashModel;

    instance-of v1, v0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation supported only on TemplateHashModelEx. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/ext/beans/return;->if:Lfreemarker/template/TemplateHashModel;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not implement it though."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic if(Lfreemarker/ext/beans/return;)Lfreemarker/ext/beans/try;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/beans/return;->do:Lfreemarker/ext/beans/try;

    return-object p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/return;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/return;->for:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/ext/beans/return$do;

    invoke-direct {v0, p0}, Lfreemarker/ext/beans/return$do;-><init>(Lfreemarker/ext/beans/return;)V

    iput-object v0, p0, Lfreemarker/ext/beans/return;->for:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/return;->do:Lfreemarker/ext/beans/try;

    iget-object v1, p0, Lfreemarker/ext/beans/return;->if:Lfreemarker/template/TemplateHashModel;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/try;->unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Landroid/support/v4/kb2;

    invoke-direct {v0, p1}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getTemplateModel()Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/return;->if:Lfreemarker/template/TemplateHashModel;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/return;->if:Lfreemarker/template/TemplateHashModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModel;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public size()I
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lfreemarker/ext/beans/return;->for()Lfreemarker/template/TemplateHashModelEx;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->size()I

    move-result v0
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/kb2;

    invoke-direct {v1, v0}, Landroid/support/v4/kb2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
