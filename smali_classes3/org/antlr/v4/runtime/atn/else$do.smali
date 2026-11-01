.class final Lorg/antlr/v4/runtime/atn/else$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/antlr/v4/runtime/atn/else;->import(Lorg/antlr/v4/runtime/atn/else;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/antlr/v4/runtime/atn/else;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/antlr/v4/runtime/atn/else;

    check-cast p2, Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/else$do;->do(Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/else;)I

    move-result p1

    return p1
.end method

.method public do(Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/else;)I
    .locals 0

    .line 1
    iget p1, p1, Lorg/antlr/v4/runtime/atn/else;->do:I

    iget p2, p2, Lorg/antlr/v4/runtime/atn/else;->do:I

    sub-int/2addr p1, p2

    return p1
.end method
