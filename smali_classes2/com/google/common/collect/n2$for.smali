.class Lcom/google/common/collect/n2$for;
.super Lcom/google/common/collect/k2;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k2<",
        "Lcom/google/common/collect/n2<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/common/collect/k2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k2<",
            "Lcom/google/common/collect/n2<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/n2$for;

    invoke-direct {v0}, Lcom/google/common/collect/n2$for;-><init>()V

    sput-object v0, Lcom/google/common/collect/n2$for;->INSTANCE:Lcom/google/common/collect/k2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/k2;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/common/collect/n2;Lcom/google/common/collect/n2;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "*>;",
            "Lcom/google/common/collect/n2<",
            "*>;)I"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/common/collect/interface;->final()Lcom/google/common/collect/interface;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v2, p2, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/interface;->this(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/interface;

    move-result-object v0

    iget-object p1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object p2, p2, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/interface;->this(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/interface;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/common/collect/interface;->const()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/n2;

    check-cast p2, Lcom/google/common/collect/n2;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/n2$for;->compare(Lcom/google/common/collect/n2;Lcom/google/common/collect/n2;)I

    move-result p1

    return p1
.end method
