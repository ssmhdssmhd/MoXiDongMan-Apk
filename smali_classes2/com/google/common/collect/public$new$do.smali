.class Lcom/google/common/collect/public$new$do;
.super Lcom/google/common/collect/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/public$new;->if(I)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/else<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/google/common/collect/public$new;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/public$new;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/public$new$do;->if:Lcom/google/common/collect/public$new;

    iput p2, p0, Lcom/google/common/collect/public$new$do;->do:I

    invoke-direct {p0}, Lcom/google/common/collect/else;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$new$do;->if:Lcom/google/common/collect/public$new;

    iget v1, p0, Lcom/google/common/collect/public$new$do;->do:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/public$new;->for(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$new$do;->if:Lcom/google/common/collect/public$new;

    iget v1, p0, Lcom/google/common/collect/public$new$do;->do:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/public$new;->try(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/public$new$do;->if:Lcom/google/common/collect/public$new;

    iget v1, p0, Lcom/google/common/collect/public$new$do;->do:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/public$new;->case(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
