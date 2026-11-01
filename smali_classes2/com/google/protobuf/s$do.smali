.class Lcom/google/protobuf/s$do;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "[B>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final do:Lcom/google/protobuf/s;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/s$do;->do:Lcom/google/protobuf/s;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s$do;->do(I[B)V

    return-void
.end method

.method public do(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/s$do;->do:Lcom/google/protobuf/s;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/s;->new(Lcom/google/protobuf/s;I[B)V

    .line 2
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public for(I)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/s$do;->do:Lcom/google/protobuf/s;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/s;->throw(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/s;->for(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/s$do;->if(I)[B

    move-result-object p1

    return-object p1
.end method

.method public if(I)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/s$do;->do:Lcom/google/protobuf/s;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/s;->getByteArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public new(I[B)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/s$do;->do:Lcom/google/protobuf/s;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/s;->if(Lcom/google/protobuf/s;I[B)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/s;->for(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/s$do;->for(I)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s$do;->new(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/s$do;->do:Lcom/google/protobuf/s;

    invoke-virtual {v0}, Lcom/google/protobuf/s;->size()I

    move-result v0

    return v0
.end method
