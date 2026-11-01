.class final Lkotlin/text/goto$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/goto$if$do;
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0002\u0018\u0000 \u00112\u00060\u0001j\u0002`\u0002:\u0001\u0012B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002R\u0019\u0010\u0006\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\u000b\u001a\u00020\n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "kotlin/text/goto$if",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "",
        "readResolve",
        "",
        "pattern",
        "Ljava/lang/String;",
        "getPattern",
        "()Ljava/lang/String;",
        "",
        "flags",
        "I",
        "getFlags",
        "()I",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "do",
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
.field public static final Companion:Lkotlin/text/goto$if$do;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final flags:I

.field private final pattern:Ljava/lang/String;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/text/goto$if$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/goto$if$do;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Lkotlin/text/goto$if;->Companion:Lkotlin/text/goto$if$do;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/goto$if;->pattern:Ljava/lang/String;

    iput p2, p0, Lkotlin/text/goto$if;->flags:I

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/text/goto;

    iget-object v1, p0, Lkotlin/text/goto$if;->pattern:Ljava/lang/String;

    iget v2, p0, Lkotlin/text/goto$if;->flags:I

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "Pattern.compile(pattern, flags)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/super;->super(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/text/goto;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public final getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/text/goto$if;->flags:I

    return v0
.end method

.method public final getPattern()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/text/goto$if;->pattern:Ljava/lang/String;

    return-object v0
.end method
