.class final Lorg/antlr/v4/runtime/atn/goto$do;
.super Landroid/support/v4/interface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/interface<",
        "Landroid/support/v4/switch;",
        ">;"
    }
.end annotation


# static fields
.field public static final do:Lorg/antlr/v4/runtime/atn/goto$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/goto$do;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/goto$do;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/goto$do;->do:Lorg/antlr/v4/runtime/atn/goto$do;

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

    iget-object p1, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    iget-object p2, p2, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {p1, p2}, Lorg/antlr/v4/runtime/atn/else;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/goto$do;->do(Landroid/support/v4/switch;Landroid/support/v4/switch;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/switch;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/goto$do;->if(Landroid/support/v4/switch;)I

    move-result p1

    return p1
.end method

.method public if(Landroid/support/v4/switch;)I
    .locals 2

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Landroid/support/v4/y01;->new(I)I

    move-result v0

    .line 2
    iget-object v1, p1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v1, v1, Landroid/support/v4/finally;->if:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 3
    iget-object p1, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-static {v0, p1}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Landroid/support/v4/y01;->do(II)I

    move-result p1

    return p1
.end method
