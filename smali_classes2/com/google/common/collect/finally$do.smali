.class Lcom/google/common/collect/finally$do;
.super Lcom/google/common/collect/finally$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/finally;->keySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/finally<",
        "TK;TV;>.try<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic try:Lcom/google/common/collect/finally;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/finally;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/finally$do;->try:Lcom/google/common/collect/finally;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/finally$try;-><init>(Lcom/google/common/collect/finally;Lcom/google/common/collect/finally$do;)V

    return-void
.end method


# virtual methods
.method public if(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$do;->try:Lcom/google/common/collect/finally;

    iget-object v0, v0, Lcom/google/common/collect/finally;->keys:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
