.class Lfreemarker/core/a3$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final do:Ljava/text/NumberFormat;

.field public final if:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/text/NumberFormat;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/a3$do;->do:Ljava/text/NumberFormat;

    .line 3
    iput-object p2, p0, Lfreemarker/core/a3$do;->if:Ljava/util/Locale;

    return-void
.end method
