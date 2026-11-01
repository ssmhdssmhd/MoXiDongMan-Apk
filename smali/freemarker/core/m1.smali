.class Lfreemarker/core/m1;
.super Lfreemarker/core/j1;
.source "SourceFile"


# instance fields
.field private final for:Lfreemarker/template/TemplateSequenceModel;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModelIterator;Lfreemarker/template/TemplateSequenceModel;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/core/j1;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    .line 2
    invoke-static {p2}, Landroid/support/v4/w41;->check(Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lfreemarker/core/m1;->for:Lfreemarker/template/TemplateSequenceModel;

    return-void
.end method


# virtual methods
.method public bridge synthetic for()Lfreemarker/core/i1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/m1;->try()Lfreemarker/core/m1;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/m1;->for:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/m1;->for:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    return v0
.end method

.method public try()Lfreemarker/core/m1;
    .locals 0

    return-object p0
.end method
