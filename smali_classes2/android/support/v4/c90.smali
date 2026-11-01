.class public final Landroid/support/v4/c90;
.super Landroid/support/v4/oc1;
.source "SourceFile"


# static fields
.field public static final import:Ljava/lang/String; = "LB"

.field public static final while:Ljava/lang/String; = "KG"


# instance fields
.field private final break:Ljava/lang/String;

.field private final case:Ljava/lang/String;

.field private final catch:Ljava/lang/String;

.field private final class:Ljava/lang/String;

.field private final const:Ljava/lang/String;

.field private final else:Ljava/lang/String;

.field private final final:Ljava/lang/String;

.field private final for:Ljava/lang/String;

.field private final goto:Ljava/lang/String;

.field private final if:Ljava/lang/String;

.field private final new:Ljava/lang/String;

.field private final super:Ljava/lang/String;

.field private final this:Ljava/lang/String;

.field private final throw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    sget-object v1, Lcom/google/zxing/client/result/else;->PRODUCT:Lcom/google/zxing/client/result/else;

    invoke-direct {p0, v1}, Landroid/support/v4/oc1;-><init>(Lcom/google/zxing/client/result/else;)V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Landroid/support/v4/c90;->if:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Landroid/support/v4/c90;->for:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Landroid/support/v4/c90;->new:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Landroid/support/v4/c90;->try:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Landroid/support/v4/c90;->case:Ljava/lang/String;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Landroid/support/v4/c90;->else:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Landroid/support/v4/c90;->goto:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Landroid/support/v4/c90;->this:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Landroid/support/v4/c90;->break:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Landroid/support/v4/c90;->catch:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Landroid/support/v4/c90;->class:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Landroid/support/v4/c90;->const:Ljava/lang/String;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Landroid/support/v4/c90;->final:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Landroid/support/v4/c90;->super:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Landroid/support/v4/c90;->throw:Ljava/util/Map;

    return-void
.end method

.method private static return(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method private static try(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->const:Ljava/lang/String;

    return-object v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->goto:Ljava/lang/String;

    return-object v0
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->super:Ljava/lang/String;

    return-object v0
.end method

.method public class()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->final:Ljava/lang/String;

    return-object v0
.end method

.method public const()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->for:Ljava/lang/String;

    return-object v0
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->if:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->this:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/support/v4/c90;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/c90;

    .line 3
    iget-object v0, p0, Landroid/support/v4/c90;->for:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->for:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->new:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->new:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->try:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->try:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->case:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->case:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->goto:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->goto:Ljava/lang/String;

    .line 7
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->this:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->this:Ljava/lang/String;

    .line 8
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->break:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->break:Ljava/lang/String;

    .line 9
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->catch:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->catch:Ljava/lang/String;

    .line 10
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->class:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->class:Ljava/lang/String;

    .line 11
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->const:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->const:Ljava/lang/String;

    .line 12
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->final:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->final:Ljava/lang/String;

    .line 13
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->super:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/c90;->super:Ljava/lang/String;

    .line 14
    invoke-static {v0, v2}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/c90;->throw:Ljava/util/Map;

    iget-object p1, p1, Landroid/support/v4/c90;->throw:Ljava/util/Map;

    .line 15
    invoke-static {v0, p1}, Landroid/support/v4/c90;->try(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->case:Ljava/lang/String;

    return-object v0
.end method

.method public goto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->try:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->for:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    .line 2
    iget-object v1, p0, Landroid/support/v4/c90;->new:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Landroid/support/v4/c90;->try:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Landroid/support/v4/c90;->case:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Landroid/support/v4/c90;->goto:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Landroid/support/v4/c90;->this:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Landroid/support/v4/c90;->break:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Landroid/support/v4/c90;->catch:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 9
    iget-object v1, p0, Landroid/support/v4/c90;->class:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 10
    iget-object v1, p0, Landroid/support/v4/c90;->const:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 11
    iget-object v1, p0, Landroid/support/v4/c90;->final:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 12
    iget-object v1, p0, Landroid/support/v4/c90;->super:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 13
    iget-object v1, p0, Landroid/support/v4/c90;->throw:Ljava/util/Map;

    invoke-static {v1}, Landroid/support/v4/c90;->return(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public import()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->break:Ljava/lang/String;

    return-object v0
.end method

.method public native()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->class:Ljava/lang/String;

    return-object v0
.end method

.method public public()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->catch:Ljava/lang/String;

    return-object v0
.end method

.method public super()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->if:Ljava/lang/String;

    return-object v0
.end method

.method public this()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->else:Ljava/lang/String;

    return-object v0
.end method

.method public throw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->new:Ljava/lang/String;

    return-object v0
.end method

.method public while()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/c90;->throw:Ljava/util/Map;

    return-object v0
.end method
