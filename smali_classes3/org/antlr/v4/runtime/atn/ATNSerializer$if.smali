.class Lorg/antlr/v4/runtime/atn/ATNSerializer$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/ATNSerializer$CodePointSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/antlr/v4/runtime/atn/ATNSerializer;->this()Lorg/antlr/v4/runtime/misc/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lorg/antlr/v4/runtime/atn/ATNSerializer;


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/atn/ATNSerializer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer$if;->do:Lorg/antlr/v4/runtime/atn/ATNSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeCodePoint(Lorg/antlr/v4/runtime/misc/do;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/ATNSerializer$if;->do:Lorg/antlr/v4/runtime/atn/ATNSerializer;

    invoke-static {v0, p1, p2}, Lorg/antlr/v4/runtime/atn/ATNSerializer;->do(Lorg/antlr/v4/runtime/atn/ATNSerializer;Lorg/antlr/v4/runtime/misc/do;I)V

    return-void
.end method
