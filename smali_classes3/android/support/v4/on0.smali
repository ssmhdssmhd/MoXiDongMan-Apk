.class public final Landroid/support/v4/on0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x12

.field public static final case:J = 0xffffffffL

.field public static final catch:I = 0x16

.field public static final class:Ljava/lang/String; = "Cp437"

.field public static final const:Ljava/lang/String;

.field public static final do:I = 0x16

.field public static final else:I = 0xffff

.field public static final final:Ljava/lang/String; = "/"

.field public static final for:I = 0xa

.field public static final goto:I = 0x1000

.field public static final if:I = 0xc

.field public static final new:I = 0x10

.field public static final super:I = 0xffff

.field public static final this:I = 0xe

.field public static final try:I = 0x10000


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "file.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/on0;->const:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
