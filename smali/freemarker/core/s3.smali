.class Lfreemarker/core/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# instance fields
.field private final do:Lfreemarker/template/TemplateSequenceModel;

.field private for:I

.field private final if:I


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
    iput v0, p0, Lfreemarker/core/s3;->for:I

    .line 3
    iput-object p1, p0, Lfreemarker/core/s3;->do:Lfreemarker/template/TemplateSequenceModel;

    .line 4
    invoke-interface {p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p1

    iput p1, p0, Lfreemarker/core/s3;->if:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/s3;->for:I

    iget v1, p0, Lfreemarker/core/s3;->if:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    iget-object v0, p0, Lfreemarker/core/s3;->do:Lfreemarker/template/TemplateSequenceModel;

    iget v1, p0, Lfreemarker/core/s3;->for:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/core/s3;->for:I

    invoke-interface {v0, v1}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v0

    return-object v0
.end method
