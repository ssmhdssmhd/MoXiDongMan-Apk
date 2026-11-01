.class Lorg/objectweb/asm/goto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public case:Lorg/objectweb/asm/goto;

.field public do:Lorg/objectweb/asm/break;

.field public for:Lorg/objectweb/asm/break;

.field public if:Lorg/objectweb/asm/break;

.field public new:Ljava/lang/String;

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lorg/objectweb/asm/goto;Lorg/objectweb/asm/break;Lorg/objectweb/asm/break;)Lorg/objectweb/asm/goto;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/goto;->case:Lorg/objectweb/asm/goto;

    invoke-static {v0, p1, p2}, Lorg/objectweb/asm/goto;->do(Lorg/objectweb/asm/goto;Lorg/objectweb/asm/break;Lorg/objectweb/asm/break;)Lorg/objectweb/asm/goto;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/goto;->case:Lorg/objectweb/asm/goto;

    iget-object v1, p0, Lorg/objectweb/asm/goto;->do:Lorg/objectweb/asm/break;

    iget v1, v1, Lorg/objectweb/asm/break;->new:I

    iget-object v2, p0, Lorg/objectweb/asm/goto;->if:Lorg/objectweb/asm/break;

    iget v2, v2, Lorg/objectweb/asm/break;->new:I

    iget v3, p1, Lorg/objectweb/asm/break;->new:I

    if-nez p2, :cond_1

    const v4, 0x7fffffff

    goto :goto_0

    :cond_1
    iget v4, p2, Lorg/objectweb/asm/break;->new:I

    :goto_0
    if-ge v3, v2, :cond_5

    if-le v4, v1, :cond_5

    if-gt v3, v1, :cond_3

    if-lt v4, v2, :cond_2

    move-object p0, v0

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lorg/objectweb/asm/goto;->do:Lorg/objectweb/asm/break;

    goto :goto_1

    :cond_3
    if-lt v4, v2, :cond_4

    iput-object p1, p0, Lorg/objectweb/asm/goto;->if:Lorg/objectweb/asm/break;

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/objectweb/asm/goto;

    invoke-direct {v0}, Lorg/objectweb/asm/goto;-><init>()V

    iput-object p2, v0, Lorg/objectweb/asm/goto;->do:Lorg/objectweb/asm/break;

    iget-object p2, p0, Lorg/objectweb/asm/goto;->if:Lorg/objectweb/asm/break;

    iput-object p2, v0, Lorg/objectweb/asm/goto;->if:Lorg/objectweb/asm/break;

    iget-object p2, p0, Lorg/objectweb/asm/goto;->for:Lorg/objectweb/asm/break;

    iput-object p2, v0, Lorg/objectweb/asm/goto;->for:Lorg/objectweb/asm/break;

    iget-object p2, p0, Lorg/objectweb/asm/goto;->new:Ljava/lang/String;

    iput-object p2, v0, Lorg/objectweb/asm/goto;->new:Ljava/lang/String;

    iget p2, p0, Lorg/objectweb/asm/goto;->try:I

    iput p2, v0, Lorg/objectweb/asm/goto;->try:I

    iget-object p2, p0, Lorg/objectweb/asm/goto;->case:Lorg/objectweb/asm/goto;

    iput-object p2, v0, Lorg/objectweb/asm/goto;->case:Lorg/objectweb/asm/goto;

    iput-object p1, p0, Lorg/objectweb/asm/goto;->if:Lorg/objectweb/asm/break;

    iput-object v0, p0, Lorg/objectweb/asm/goto;->case:Lorg/objectweb/asm/goto;

    :cond_5
    :goto_1
    return-object p0
.end method
