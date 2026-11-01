.class final Lfreemarker/core/k1;
.super Lfreemarker/core/j1;
.source "SourceFile"


# instance fields
.field private final for:I


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModelIterator;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lfreemarker/core/j1;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    .line 2
    iput p2, p0, Lfreemarker/core/k1;->for:I

    return-void
.end method


# virtual methods
.method public for()Lfreemarker/core/i1;
    .locals 4

    .line 1
    new-instance v0, Lfreemarker/core/k1;

    invoke-virtual {p0}, Lfreemarker/core/u3;->do()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    iget v2, p0, Lfreemarker/core/k1;->for:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lfreemarker/core/k1;-><init>(Lfreemarker/template/TemplateModelIterator;IZ)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/k1;->for:I

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
    iget v0, p0, Lfreemarker/core/k1;->for:I

    return v0
.end method
