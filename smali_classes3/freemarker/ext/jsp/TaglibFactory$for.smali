.class public final Lfreemarker/ext/jsp/TaglibFactory$for;
.super Lfreemarker/ext/jsp/TaglibFactory$break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private final do:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/TaglibFactory$break;-><init>(Lfreemarker/ext/jsp/TaglibFactory$do;)V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$for;->do:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public do()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$for;->do:Ljava/util/regex/Pattern;

    return-object v0
.end method
