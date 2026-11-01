.class final Lorg/antlr/v4/runtime/atn/ATNDeserializer$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/antlr/v4/runtime/atn/ATNDeserializer;->case(Lorg/antlr/v4/runtime/atn/ATNDeserializer$new;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readUnicode([CI)I
    .locals 0

    .line 1
    aget-char p1, p1, p2

    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->catch(C)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
