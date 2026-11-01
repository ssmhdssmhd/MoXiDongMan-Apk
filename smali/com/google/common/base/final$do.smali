.class Lcom/google/common/base/final$do;
.super Lcom/google/common/base/final;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/final;->native(Ljava/lang/String;)Lcom/google/common/base/final;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/google/common/base/final;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/common/base/final;Lcom/google/common/base/final;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/base/final$do;->for:Lcom/google/common/base/final;

    iput-object p3, p0, Lcom/google/common/base/final$do;->if:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/common/base/final;-><init>(Lcom/google/common/base/final;Lcom/google/common/base/final$do;)V

    return-void
.end method


# virtual methods
.method public import(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/common/base/final$do;->if:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/final$do;->for:Lcom/google/common/base/final;

    invoke-virtual {v0, p1}, Lcom/google/common/base/final;->import(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public native(Ljava/lang/String;)Lcom/google/common/base/final;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "already specified useForNull"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public while()Lcom/google/common/base/final;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
