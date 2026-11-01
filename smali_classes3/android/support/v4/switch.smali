.class public Landroid/support/v4/switch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final case:I = 0x40000000


# instance fields
.field public final do:Landroid/support/v4/finally;

.field public for:Lorg/antlr/v4/runtime/atn/else;

.field public final if:I

.field public new:I

.field public final try:Lorg/antlr/v4/runtime/atn/break;


# direct methods
.method public constructor <init>(Landroid/support/v4/finally;ILorg/antlr/v4/runtime/atn/else;)V
    .locals 1

    .line 7
    sget-object v0, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/finally;ILorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/finally;ILorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    .line 10
    iput p2, p0, Landroid/support/v4/switch;->if:I

    .line 11
    iput-object p3, p0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    .line 12
    iput-object p4, p0, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/switch;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iput-object v0, p0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    .line 3
    iget v0, p1, Landroid/support/v4/switch;->if:I

    iput v0, p0, Landroid/support/v4/switch;->if:I

    .line 4
    iget-object v0, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    iput-object v0, p0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    .line 5
    iget-object v0, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    iput-object v0, p0, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    .line 6
    iget p1, p1, Landroid/support/v4/switch;->new:I

    iput p1, p0, Landroid/support/v4/switch;->new:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/switch;Landroid/support/v4/finally;)V
    .locals 2

    .line 13
    iget-object v0, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    iget-object v1, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/break;)V
    .locals 1

    .line 14
    iget-object v0, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;)V
    .locals 1

    .line 16
    iget-object v0, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    .line 19
    iget p2, p1, Landroid/support/v4/switch;->if:I

    iput p2, p0, Landroid/support/v4/switch;->if:I

    .line 20
    iput-object p3, p0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    .line 21
    iput-object p4, p0, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    .line 22
    iget p1, p1, Landroid/support/v4/switch;->new:I

    iput p1, p0, Landroid/support/v4/switch;->new:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/switch;Lorg/antlr/v4/runtime/atn/break;)V
    .locals 2

    .line 15
    iget-object v0, p1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget-object v1, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/support/v4/switch;-><init>(Landroid/support/v4/switch;Landroid/support/v4/finally;Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/break;)V

    return-void
.end method


# virtual methods
.method public do(Landroid/support/v4/switch;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    iget-object v2, p0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v2, v2, Landroid/support/v4/finally;->if:I

    iget-object v3, p1, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v3, v3, Landroid/support/v4/finally;->if:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/support/v4/switch;->if:I

    iget v3, p1, Landroid/support/v4/switch;->if:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    iget-object v3, p1, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Lorg/antlr/v4/runtime/atn/else;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    iget-object v3, p1, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/switch;->for()Z

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/switch;->for()Z

    move-result p1

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/switch;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/switch;

    invoke-virtual {p0, p1}, Landroid/support/v4/switch;->do(Landroid/support/v4/switch;)Z

    move-result p1

    return p1
.end method

.method public final for()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/switch;->new:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Landroid/support/v4/y01;->new(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    iget v1, v1, Landroid/support/v4/finally;->if:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 3
    iget v1, p0, Landroid/support/v4/switch;->if:I

    invoke-static {v0, v1}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-static {v0, v1}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result v0

    .line 5
    iget-object v1, p0, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-static {v0, v1}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x4

    .line 6
    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method

.method public final if()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/switch;->new:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public final new(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Landroid/support/v4/switch;->new:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/switch;->new:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Landroid/support/v4/switch;->new:I

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/switch;->new:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/switch;->try(Lorg/antlr/v4/runtime/this;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try(Lorg/antlr/v4/runtime/this;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x28

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Landroid/support/v4/switch;->do:Landroid/support/v4/finally;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget p2, p0, Landroid/support/v4/switch;->if:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget-object p2, p0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    if-eqz p2, :cond_1

    const-string p2, ",["

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object p2, p0, Landroid/support/v4/switch;->for:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    iget-object p2, p0, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    if-eqz p2, :cond_2

    sget-object v1, Lorg/antlr/v4/runtime/atn/break;->do:Lorg/antlr/v4/runtime/atn/break;

    if-eq p2, v1, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object p2, p0, Landroid/support/v4/switch;->try:Lorg/antlr/v4/runtime/atn/break;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/switch;->if()I

    move-result p2

    if-lez p2, :cond_3

    const-string p2, ",up="

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/switch;->if()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p2, 0x29

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
