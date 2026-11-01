.class public final Lfreemarker/ext/jsp/TaglibFactory$try;
.super Lfreemarker/ext/jsp/TaglibFactory$break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation


# static fields
.field public static final do:Lfreemarker/ext/jsp/TaglibFactory$try;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/jsp/TaglibFactory$try;

    invoke-direct {v0}, Lfreemarker/ext/jsp/TaglibFactory$try;-><init>()V

    sput-object v0, Lfreemarker/ext/jsp/TaglibFactory$try;->do:Lfreemarker/ext/jsp/TaglibFactory$try;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/TaglibFactory$break;-><init>(Lfreemarker/ext/jsp/TaglibFactory$do;)V

    return-void
.end method
