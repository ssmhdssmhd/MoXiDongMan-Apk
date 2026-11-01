.class public final Landroid/support/v4/al;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0005\u001a\u00020\u00028G@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0013\u0010\u0007\u001a\u00020\u00028G@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004R\u0013\u0010\t\u001a\u00020\u00028G@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroid/support/v4/al;",
        "",
        "Ljava/nio/charset/Charset;",
        "do",
        "()Ljava/nio/charset/Charset;",
        "UTF_32",
        "for",
        "UTF_32LE",
        "if",
        "UTF_32BE",
        "<init>",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final break:Landroid/support/v4/al;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field public static final case:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field public static final do:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field private static else:Ljava/nio/charset/Charset;

.field public static final for:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field private static goto:Ljava/nio/charset/Charset;

.field public static final if:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field public static final new:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field

.field private static this:Ljava/nio/charset/Charset;

.field public static final try:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/tp0;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/al;

    invoke-direct {v0}, Landroid/support/v4/al;-><init>()V

    sput-object v0, Landroid/support/v4/al;->break:Landroid/support/v4/al;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"UTF-8\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/al;->do:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"UTF-16\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/al;->if:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    .line 4
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"UTF-16BE\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/al;->for:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    .line 5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"UTF-16LE\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/al;->new:Ljava/nio/charset/Charset;

    const-string v0, "US-ASCII"

    .line 6
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"US-ASCII\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/al;->try:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 7
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"ISO-8859-1\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v4/al;->case:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final do()Ljava/nio/charset/Charset;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "UTF32"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/al;->else:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-32"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"UTF-32\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sput-object v0, Landroid/support/v4/al;->else:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public final for()Ljava/nio/charset/Charset;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "UTF32_LE"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/al;->goto:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-32LE"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"UTF-32LE\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sput-object v0, Landroid/support/v4/al;->goto:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public final if()Ljava/nio/charset/Charset;
    .locals 2
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "UTF32_BE"
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/al;->this:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-32BE"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"UTF-32BE\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sput-object v0, Landroid/support/v4/al;->this:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method
