.class Lcom/google/common/collect/i2$do;
.super Lcom/google/common/collect/c2$case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c2$case<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/Object;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final synthetic for:Lcom/google/common/collect/i2;

.field public if:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/i2$do;->for:Lcom/google/common/collect/i2;

    invoke-direct {p0}, Lcom/google/common/collect/c2$case;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/i2;->do:[Ljava/lang/Object;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/common/collect/i2$do;->do:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/i2$do;->if:I

    return-void
.end method


# virtual methods
.method public do(I)I
    .locals 3
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/i2$do;->if()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/i2$do;->if:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/i2$do;->for:Lcom/google/common/collect/i2;

    iget-object v1, p0, Lcom/google/common/collect/i2$do;->do:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/i2;->static(Ljava/lang/Object;I)I

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/i2$do;->for:Lcom/google/common/collect/i2;

    iget-object v1, v1, Lcom/google/common/collect/i2;->if:[I

    aget v2, v1, v0

    .line 5
    aput p1, v1, v0

    return v2
.end method

.method public getCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/i2$do;->if()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/i2$do;->if:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/i2$do;->for:Lcom/google/common/collect/i2;

    iget-object v1, v1, Lcom/google/common/collect/i2;->if:[I

    aget v0, v1, v0

    :goto_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i2$do;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public if()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/common/collect/i2$do;->if:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/i2$do;->for:Lcom/google/common/collect/i2;

    .line 2
    invoke-virtual {v1}, Lcom/google/common/collect/i2;->abstract()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/i2$do;->do:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/i2$do;->for:Lcom/google/common/collect/i2;

    iget-object v1, v1, Lcom/google/common/collect/i2;->do:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/i2$do;->if:I

    aget-object v1, v1, v2

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/i2$do;->for:Lcom/google/common/collect/i2;

    iget-object v1, p0, Lcom/google/common/collect/i2$do;->do:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/i2;->final(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/i2$do;->if:I

    :cond_1
    return-void
.end method
