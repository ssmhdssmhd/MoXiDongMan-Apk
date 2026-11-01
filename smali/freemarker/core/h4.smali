.class public abstract Lfreemarker/core/h4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final case:I = -0x3b9aca00


# instance fields
.field private do:Lfreemarker/template/static;

.field public for:I

.field public if:I

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final break()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lfreemarker/core/h4;->do:Lfreemarker/template/static;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lfreemarker/core/h4;->if:I

    iget v2, p0, Lfreemarker/core/h4;->for:I

    iget v3, p0, Lfreemarker/core/h4;->new:I

    iget v4, p0, Lfreemarker/core/h4;->try:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lfreemarker/template/static;->p1(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public abstract case()Ljava/lang/String;
.end method

.method public catch()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/h4;->do:Lfreemarker/template/static;

    iget v1, p0, Lfreemarker/core/h4;->for:I

    iget v2, p0, Lfreemarker/core/h4;->if:I

    invoke-static {v0, v1, v2}, Lfreemarker/core/b5;->goto(Lfreemarker/template/static;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public class()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/h4;->catch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public const(Lfreemarker/template/static;IIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/h4;->do:Lfreemarker/template/static;

    .line 2
    iput p2, p0, Lfreemarker/core/h4;->if:I

    .line 3
    iput p3, p0, Lfreemarker/core/h4;->for:I

    .line 4
    iput p4, p0, Lfreemarker/core/h4;->new:I

    .line 5
    iput p5, p0, Lfreemarker/core/h4;->try:I

    return-void
.end method

.method public do(II)Z
    .locals 3

    .line 1
    iget v0, p0, Lfreemarker/core/h4;->for:I

    const/4 v1, 0x0

    if-lt p2, v0, :cond_3

    iget v2, p0, Lfreemarker/core/h4;->try:I

    if-le p2, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 2
    iget v0, p0, Lfreemarker/core/h4;->if:I

    if-ge p1, v0, :cond_1

    return v1

    :cond_1
    if-ne p2, v2, :cond_2

    .line 3
    iget p2, p0, Lfreemarker/core/h4;->new:I

    if-le p1, p2, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public abstract else()I
.end method

.method public final final(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/h4;)V
    .locals 6

    .line 1
    iget v2, p2, Lfreemarker/core/h4;->if:I

    iget v3, p2, Lfreemarker/core/h4;->for:I

    iget v4, p3, Lfreemarker/core/h4;->new:I

    iget v5, p3, Lfreemarker/core/h4;->try:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/h4;->const(Lfreemarker/template/static;IIII)V

    return-void
.end method

.method public abstract for()Ljava/lang/String;
.end method

.method public final getBeginColumn()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/h4;->if:I

    return v0
.end method

.method public final getBeginLine()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/h4;->for:I

    return v0
.end method

.method public final getEndColumn()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/h4;->new:I

    return v0
.end method

.method public final getEndLine()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/h4;->try:I

    return v0
.end method

.method public getTemplate()Lfreemarker/template/static;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/h4;->do:Lfreemarker/template/static;

    return-object v0
.end method

.method public abstract goto(I)Lfreemarker/core/f3;
.end method

.method public if(Lfreemarker/core/h4;)Lfreemarker/core/h4;
    .locals 1

    .line 1
    iget-object v0, p1, Lfreemarker/core/h4;->do:Lfreemarker/template/static;

    iput-object v0, p0, Lfreemarker/core/h4;->do:Lfreemarker/template/static;

    .line 2
    iget v0, p1, Lfreemarker/core/h4;->if:I

    iput v0, p0, Lfreemarker/core/h4;->if:I

    .line 3
    iget v0, p1, Lfreemarker/core/h4;->for:I

    iput v0, p0, Lfreemarker/core/h4;->for:I

    .line 4
    iget v0, p1, Lfreemarker/core/h4;->new:I

    iput v0, p0, Lfreemarker/core/h4;->new:I

    .line 5
    iget p1, p1, Lfreemarker/core/h4;->try:I

    iput p1, p0, Lfreemarker/core/h4;->try:I

    return-object p0
.end method

.method public final import(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;Lfreemarker/core/c4;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Lfreemarker/core/c4;->case()Lfreemarker/core/b4;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p4}, Lfreemarker/core/h4;->throw(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/h4;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/h4;->while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V

    :goto_0
    return-void
.end method

.method public new()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/h4;->do:Lfreemarker/template/static;

    iget v1, p0, Lfreemarker/core/h4;->try:I

    iget v2, p0, Lfreemarker/core/h4;->new:I

    invoke-static {v0, v1, v2}, Lfreemarker/core/b5;->goto(Lfreemarker/template/static;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final super(Lfreemarker/template/static;Lfreemarker/core/h4;Lfreemarker/core/m4;)V
    .locals 6

    .line 1
    iget v2, p2, Lfreemarker/core/h4;->if:I

    iget v3, p2, Lfreemarker/core/h4;->for:I

    iget v4, p3, Lfreemarker/core/m4;->endColumn:I

    iget v5, p3, Lfreemarker/core/m4;->endLine:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/h4;->const(Lfreemarker/template/static;IIII)V

    return-void
.end method

.method public abstract this(I)Ljava/lang/Object;
.end method

.method public final throw(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/h4;)V
    .locals 6

    .line 1
    iget v2, p2, Lfreemarker/core/m4;->beginColumn:I

    iget v3, p2, Lfreemarker/core/m4;->beginLine:I

    iget v4, p3, Lfreemarker/core/h4;->new:I

    iget v5, p3, Lfreemarker/core/h4;->try:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/h4;->const(Lfreemarker/template/static;IIII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/h4;->break()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/h4;->new()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final while(Lfreemarker/template/static;Lfreemarker/core/m4;Lfreemarker/core/m4;)V
    .locals 6

    .line 1
    iget v2, p2, Lfreemarker/core/m4;->beginColumn:I

    iget v3, p2, Lfreemarker/core/m4;->beginLine:I

    iget v4, p3, Lfreemarker/core/m4;->endColumn:I

    iget v5, p3, Lfreemarker/core/m4;->endLine:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/h4;->const(Lfreemarker/template/static;IIII)V

    return-void
.end method
