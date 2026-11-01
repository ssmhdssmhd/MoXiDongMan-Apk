.class final Lcom/google/common/collect/s1$class;
.super Lcom/google/common/collect/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "class"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/if<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final try:Landroid/support/v4/bc2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/bc2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final for:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final new:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/s1$class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/common/collect/s1$class;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lcom/google/common/collect/s1$class;->try:Landroid/support/v4/bc2;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/google/common/collect/if;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/s1$class;->for:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/s1$class;->new:I

    return-void
.end method


# virtual methods
.method public do(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/s1$class;->for:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/s1$class;->new:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
