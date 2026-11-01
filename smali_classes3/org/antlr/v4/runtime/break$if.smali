.class Lorg/antlr/v4/runtime/break$if;
.super Lorg/antlr/v4/runtime/break$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic try:Lorg/antlr/v4/runtime/break;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/break;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/break$if;->try:Lorg/antlr/v4/runtime/break;

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/break$new;-><init>(Lorg/antlr/v4/runtime/break;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/StringBuilder;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/break$new;->for:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/break$if;->try:Lorg/antlr/v4/runtime/break;

    iget-object v0, v0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    iget v1, p0, Lorg/antlr/v4/runtime/break$new;->if:I

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/antlr/v4/runtime/break$if;->try:Lorg/antlr/v4/runtime/break;

    iget-object v0, v0, Lorg/antlr/v4/runtime/break;->do:Lorg/antlr/v4/runtime/TokenStream;

    iget v1, p0, Lorg/antlr/v4/runtime/break$new;->if:I

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->get(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget p1, p0, Lorg/antlr/v4/runtime/break$new;->if:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
