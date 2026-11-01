.class public Lcom/wsw/cospa/for;
.super Lcom/bumptech/glide/else;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/else<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/goto;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/Glide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/goto;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/goto;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/else;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/goto;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/else;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/else;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/else<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/else;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/else;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic A(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->y1(I)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public A1(Lcom/bumptech/glide/try;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/try;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->z1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public B1(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TY;>;TY;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->A1(Lcom/bumptech/glide/try;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public C1(Lcom/bumptech/glide/load/Key;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->I(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public D1(F)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->J(F)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic E0(F)Lcom/bumptech/glide/else;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->G1(F)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public E1(Z)Lcom/wsw/cospa/for;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->K(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic F0(Lcom/bumptech/glide/else;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Lcom/bumptech/glide/else;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->H1(Lcom/bumptech/glide/else;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public F1(Landroid/content/res/Resources$Theme;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->L(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic G0([Lcom/bumptech/glide/else;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/else;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->I1([Lcom/bumptech/glide/else;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public G1(F)Lcom/wsw/cospa/for;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->E0(F)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic H(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Option;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/for;->B1(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic H0(Lcom/bumptech/glide/this;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Lcom/bumptech/glide/this;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->O1(Lcom/bumptech/glide/this;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public H1(Lcom/bumptech/glide/else;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/else;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/else<",
            "TTranscodeType;>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->F0(Lcom/bumptech/glide/else;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic I(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->C1(Lcom/bumptech/glide/load/Key;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public I0(Lcom/bumptech/glide/request/RequestListener;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->W(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public final varargs I1([Lcom/bumptech/glide/else;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/else;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/else<",
            "TTranscodeType;>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->G0([Lcom/bumptech/glide/else;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic J(F)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->D1(F)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/do<",
            "*>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public J1(I)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->M(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic K(Z)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->E1(Z)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public K0()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->for()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public K1(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic L(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->F1(Landroid/content/res/Resources$Theme;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public L0()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->new()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public L1(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->Q(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic M(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->J1(I)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public M0()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->try()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public varargs M1([Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->S([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic N(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->K1(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public N0()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/else;->b0()Lcom/bumptech/glide/else;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public varargs N1([Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->T([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public O0(Ljava/lang/Class;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->else(Ljava/lang/Class;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public O1(Lcom/bumptech/glide/this;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/this;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/this<",
            "*-TTranscodeType;>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->H0(Lcom/bumptech/glide/this;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public P0()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->goto()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public P1(Z)Lcom/wsw/cospa/for;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->U(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic Q(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/for;->L1(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public Q0(Lcom/bumptech/glide/load/engine/case;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/case;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/case;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public Q1(Z)Lcom/wsw/cospa/for;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->V(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public R0()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->break()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic S([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->M1([Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public S0()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->catch()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic T([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # [Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->N1([Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public T0(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/try;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->class(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic U(Z)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->P1(Z)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public U0(Landroid/graphics/Bitmap$CompressFormat;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->const(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic V(Z)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->Q1(Z)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public V0(I)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->final(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic W(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->I0(Lcom/bumptech/glide/request/RequestListener;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public W0(I)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->super(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public X0(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public Y0(Lcom/bumptech/glide/else;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/else;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/else<",
            "TTranscodeType;>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->e0(Lcom/bumptech/glide/else;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public Z0(I)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->while(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public a1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->import(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic b0()Lcom/bumptech/glide/else;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->N0()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public b1()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->native()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic break()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->R0()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public c1(Lcom/bumptech/glide/load/if;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/if;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic case()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->N0()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic catch()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->S0()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic class(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->T0(Lcom/bumptech/glide/load/resource/bitmap/try;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->N0()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic const(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->U0(Landroid/graphics/Bitmap$CompressFormat;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public d1(J)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->return(J)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic do(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e0(Lcom/bumptech/glide/else;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Lcom/bumptech/glide/else;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->Y0(Lcom/bumptech/glide/else;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public e1()Lcom/wsw/cospa/for;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/for;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lcom/wsw/cospa/for;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/else;)V

    sget-object v1, Lcom/bumptech/glide/else;->w:Landroid/support/v4/dn1;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/for;->J0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic else(Ljava/lang/Class;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->O0(Ljava/lang/Class;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f0()Lcom/bumptech/glide/else;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->e1()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public f1(Lcom/bumptech/glide/request/RequestListener;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "TTranscodeType;>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->o0(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic final(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->V0(I)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic for()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->K0()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public g1(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->p0(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic goto()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->P0()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public h1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->q0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public i1(Landroid/net/Uri;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->r0(Landroid/net/Uri;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic import(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->a1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public j1(Ljava/io/File;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->s0(Ljava/io/File;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public k1(Ljava/lang/Integer;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->t0(Ljava/lang/Integer;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public l1(Ljava/lang/Object;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->u0(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->g1(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->h1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->i1(Landroid/net/Uri;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->j1(Ljava/io/File;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->k1(Ljava/lang/Integer;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->l1(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->m1(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->n1(Ljava/net/URL;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->o1([B)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public m1(Ljava/lang/String;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public n1(Ljava/net/URL;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->w0(Ljava/net/URL;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic native()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->b1()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic new()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->L0()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o0(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/RequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->f1(Lcom/bumptech/glide/request/RequestListener;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public o1([B)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/else;->x0([B)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic p(Z)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->p1(Z)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p0(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->g1(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public p1(Z)Lcom/wsw/cospa/for;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->p(Z)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic public(Lcom/bumptech/glide/load/if;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->c1(Lcom/bumptech/glide/load/if;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->q1()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->h1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public q1()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->q()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic r()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->r1()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r0(Landroid/net/Uri;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->i1(Landroid/net/Uri;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public r1()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->r()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic return(J)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/for;->d1(J)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->s1()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s0(Ljava/io/File;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->j1(Ljava/io/File;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public s1()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->s()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic super(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->W0(I)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic t()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->t1()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t0(Ljava/lang/Integer;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->k1(Ljava/lang/Integer;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public t1()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/do;->t()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic this(Lcom/bumptech/glide/load/engine/case;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/case;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->Q0(Lcom/bumptech/glide/load/engine/case;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic throw(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->X0(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic try()Lcom/bumptech/glide/request/do;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/for;->M0()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u0(Ljava/lang/Object;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->l1(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public u1(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->v(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic v(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->u1(Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v0(Ljava/lang/String;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->m1(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public v1(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TY;>;)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->x(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic w0(Ljava/net/URL;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->n1(Ljava/net/URL;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public w1(I)Lcom/wsw/cospa/for;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->y(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic while(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->Z0(I)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/do;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/Transformation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/for;->v1(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x0([B)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->o1([B)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public x1(II)Lcom/wsw/cospa/for;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/do;->z(II)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic y(I)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/for;->w1(I)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public y1(I)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->A(I)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic z(II)Lcom/bumptech/glide/request/do;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/for;->x1(II)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public z1(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/wsw/cospa/for<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/do;->B(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method
