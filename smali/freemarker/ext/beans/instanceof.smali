.class Lfreemarker/ext/beans/instanceof;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelAdapter;


# instance fields
.field private final do:Lfreemarker/ext/beans/try;

.field private final if:Lfreemarker/template/TemplateSequenceModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/beans/instanceof;->if:Lfreemarker/template/TemplateSequenceModel;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/beans/instanceof;->do:Lfreemarker/ext/beans/try;

    return-void
.end method


# virtual methods
.method public do()Lfreemarker/template/TemplateSequenceModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/instanceof;->if:Lfreemarker/template/TemplateSequenceModel;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/instanceof;->do:Lfreemarker/ext/beans/try;

    iget-object v1, p0, Lfreemarker/ext/beans/instanceof;->if:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v1, p1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

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
    iget-object v0, p0, Lfreemarker/ext/beans/instanceof;->if:Lfreemarker/template/TemplateSequenceModel;

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/instanceof;->if:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

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
