.class Lcom/google/common/collect/s3$do;
.super Lcom/google/common/collect/c2$case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/s3;->goto(Lcom/google/common/collect/s3$case;)Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c2$case<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/s3$case;

.field public final synthetic if:Lcom/google/common/collect/s3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/s3;Lcom/google/common/collect/s3$case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/s3$do;->if:Lcom/google/common/collect/s3;

    iput-object p2, p0, Lcom/google/common/collect/s3$do;->do:Lcom/google/common/collect/s3$case;

    invoke-direct {p0}, Lcom/google/common/collect/c2$case;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/s3$do;->do:Lcom/google/common/collect/s3$case;

    invoke-virtual {v0}, Lcom/google/common/collect/s3$case;->throws()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/s3$do;->if:Lcom/google/common/collect/s3;

    invoke-virtual {p0}, Lcom/google/common/collect/s3$do;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/s3;->count(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/s3$do;->do:Lcom/google/common/collect/s3$case;

    invoke-virtual {v0}, Lcom/google/common/collect/s3$case;->default()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
