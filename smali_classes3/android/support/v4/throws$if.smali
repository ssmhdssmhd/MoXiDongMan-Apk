.class public final Landroid/support/v4/throws$if;
.super Landroid/support/v4/interface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/throws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/interface<",
        "Landroid/support/v4/switch;",
        ">;"
    }
.end annotation


# static fields
.field public static final do:Landroid/support/v4/throws$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/throws$if;

    invoke-direct {v0}, Landroid/support/v4/throws$if;-><init>()V

    sput-object v0, Landroid/support/v4/throws$if;->do:Landroid/support/v4/throws$if;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/interface;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/support/v4/switch;Landroid/support/v4/switch;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    iget-object v2, p1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v2, v2, Landroid/support/v4/finally;->if:I

    iget-object v3, p2, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v3, v3, Landroid/support/v4/finally;->if:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Landroid/support/v4/switch;->if:I

    iget v3, p2, Landroid/support/v4/switch;->if:I

    if-ne v2, v3, :cond_2

    iget-object p1, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    iget-object p2, p2, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/switch;

    check-cast p2, Landroid/support/v4/switch;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/throws$if;->do(Landroid/support/v4/switch;Landroid/support/v4/switch;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/switch;

    invoke-virtual {p0, p1}, Landroid/support/v4/throws$if;->if(Landroid/support/v4/switch;)I

    move-result p1

    return p1
.end method

.method public if(Landroid/support/v4/switch;)I
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v0, v0, Landroid/support/v4/finally;->if:I

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p1, Landroid/support/v4/switch;->if:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object p1, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method
