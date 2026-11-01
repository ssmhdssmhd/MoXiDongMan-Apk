.class Lfreemarker/core/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# instance fields
.field private final do:Lfreemarker/template/TemplateSequenceModel;

.field private for:I

.field private if:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateSequenceModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lfreemarker/core/p1;->for:I

    .line 3
    iput-object p1, p0, Lfreemarker/core/p1;->do:Lfreemarker/template/TemplateSequenceModel;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/p1;->if:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/p1;->do:Lfreemarker/template/TemplateSequenceModel;

    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/p1;->if:Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/support/v4/k52; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error when getting sequence size"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    :goto_0
    iget v0, p0, Lfreemarker/core/p1;->for:I

    iget-object v1, p0, Lfreemarker/core/p1;->if:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/p1;->do:Lfreemarker/template/TemplateSequenceModel;

    iget v1, p0, Lfreemarker/core/p1;->for:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/core/p1;->for:I

    invoke-interface {v0, v1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0
.end method
