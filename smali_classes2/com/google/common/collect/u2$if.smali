.class final Lcom/google/common/collect/u2$if;
.super Lcom/google/common/collect/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/p1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/collect/u2;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/u2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/u2$if;->this$0:Lcom/google/common/collect/u2;

    invoke-direct {p0}, Lcom/google/common/collect/p1;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/u2;Lcom/google/common/collect/u2$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/u2$if;-><init>(Lcom/google/common/collect/u2;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u2$if;->this$0:Lcom/google/common/collect/u2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c1;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u2$if;->this$0:Lcom/google/common/collect/u2;

    iget-object v0, v0, Lcom/google/common/collect/u2;->contents:Lcom/google/common/collect/i2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i2;->break(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u2$if;->this$0:Lcom/google/common/collect/u2;

    iget-object v0, v0, Lcom/google/common/collect/u2;->contents:Lcom/google/common/collect/i2;

    invoke-virtual {v0}, Lcom/google/common/collect/i2;->abstract()I

    move-result v0

    return v0
.end method
