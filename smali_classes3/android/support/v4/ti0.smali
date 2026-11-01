.class public final Landroid/support/v4/ti0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:I

.field public final for:Ljava/lang/String;

.field public final if:Ljava/lang/String;

.field public final new:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/ti0;->do:I

    iput-object p2, p0, Landroid/support/v4/ti0;->if:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/ti0;->for:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/ti0;->new:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ti0;->new:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/support/v4/ti0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/support/v4/ti0;

    iget v1, p0, Landroid/support/v4/ti0;->do:I

    iget v3, p1, Landroid/support/v4/ti0;->do:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/support/v4/ti0;->if:Ljava/lang/String;

    iget-object v3, p1, Landroid/support/v4/ti0;->if:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/ti0;->for:Ljava/lang/String;

    iget-object v3, p1, Landroid/support/v4/ti0;->for:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/ti0;->new:Ljava/lang/String;

    iget-object p1, p1, Landroid/support/v4/ti0;->new:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ti0;->if:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroid/support/v4/ti0;->do:I

    iget-object v1, p0, Landroid/support/v4/ti0;->if:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/ti0;->for:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    iget-object v2, p0, Landroid/support/v4/ti0;->new:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ti0;->for:Ljava/lang/String;

    return-object v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Landroid/support/v4/ti0;->do:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ti0;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/ti0;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/support/v4/ti0;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/support/v4/ti0;->do:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
