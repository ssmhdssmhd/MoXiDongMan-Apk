.class Lcom/gyf/immersionbar/new;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:Ljava/lang/String; = "EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE"

.field public static final case:Ljava/lang/String; = "navigation_bar_width"

.field public static final catch:I = -0x454546

.field public static final class:I = 0x0

.field public static final const:I = 0x1

.field public static final do:I

.field public static final else:Ljava/lang/String; = "force_fsg_nav_bar"

.field public static final final:I = 0x2

.field public static final for:Ljava/lang/String; = "status_bar_height"

.field public static final goto:Ljava/lang/String; = "navigationbar_is_min"

.field public static final if:I

.field public static final new:Ljava/lang/String; = "navigation_bar_height"

.field public static final super:I = 0x3

.field public static final this:Ljava/lang/String; = "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

.field public static final throw:I = 0x4

.field public static final try:Ljava/lang/String; = "navigation_bar_height_landscape"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/gyf/immersionbar/R$id;->immersion_status_bar_view:I

    sput v0, Lcom/gyf/immersionbar/new;->do:I

    .line 2
    sget v0, Lcom/gyf/immersionbar/R$id;->immersion_navigation_bar_view:I

    sput v0, Lcom/gyf/immersionbar/new;->if:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
