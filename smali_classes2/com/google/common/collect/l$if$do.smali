.class Lcom/google/common/collect/l$if$do;
.super Lcom/google/common/collect/c2$case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l$if;->if(I)Lcom/google/common/collect/Multiset$Entry;
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
.field public final synthetic do:I

.field public final synthetic if:Lcom/google/common/collect/l$if;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/l$if;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/l$if$do;->if:Lcom/google/common/collect/l$if;

    iput p2, p0, Lcom/google/common/collect/l$if$do;->do:I

    invoke-direct {p0}, Lcom/google/common/collect/c2$case;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l$if$do;->if:Lcom/google/common/collect/l$if;

    iget-object v0, v0, Lcom/google/common/collect/l$if;->new:Lcom/google/common/collect/l;

    invoke-static {v0}, Lcom/google/common/collect/l;->access$000(Lcom/google/common/collect/l;)[Ljava/lang/Enum;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/l$if$do;->do:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l$if$do;->if:Lcom/google/common/collect/l$if;

    iget-object v0, v0, Lcom/google/common/collect/l$if;->new:Lcom/google/common/collect/l;

    invoke-static {v0}, Lcom/google/common/collect/l;->access$100(Lcom/google/common/collect/l;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/l$if$do;->do:I

    aget v0, v0, v1

    return v0
.end method

.method public bridge synthetic getElement()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l$if$do;->do()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
