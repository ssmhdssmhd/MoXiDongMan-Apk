.class public Lcom/gyf/immersionbar/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Lcom/gyf/immersionbar/OnBarListener;

.field public abstract:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public break:Lcom/gyf/immersionbar/if;

.field public case:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public catch:Z

.field public class:Z

.field public const:Z

.field public continue:Z

.field public default:Z

.field public do:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public else:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public extends:Landroid/view/View;

.field public final:Z

.field public finally:Landroid/view/View;

.field public for:I

.field public goto:Z

.field public if:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public implements:Z

.field public import:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public instanceof:Lcom/gyf/immersionbar/OnKeyboardListener;

.field public interface:Z

.field public native:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public new:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public package:Z

.field public private:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public protected:Z

.field public public:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public return:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public static:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public strictfp:Z

.field public super:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public switch:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public synchronized:Lcom/gyf/immersionbar/OnNavigationBarListener;

.field public this:Z

.field public throw:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public throws:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public transient:Z

.field public try:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field public volatile:I

.field public while:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/gyf/immersionbar/for;->do:I

    const/high16 v1, -0x1000000

    .line 3
    iput v1, p0, Lcom/gyf/immersionbar/for;->if:I

    .line 4
    iput v1, p0, Lcom/gyf/immersionbar/for;->for:I

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/gyf/immersionbar/for;->new:F

    .line 6
    iput v2, p0, Lcom/gyf/immersionbar/for;->try:F

    .line 7
    iput v2, p0, Lcom/gyf/immersionbar/for;->case:F

    .line 8
    iput v2, p0, Lcom/gyf/immersionbar/for;->else:F

    .line 9
    iput-boolean v0, p0, Lcom/gyf/immersionbar/for;->goto:Z

    .line 10
    iput-boolean v0, p0, Lcom/gyf/immersionbar/for;->this:Z

    .line 11
    sget-object v3, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    iput-object v3, p0, Lcom/gyf/immersionbar/for;->break:Lcom/gyf/immersionbar/if;

    .line 12
    iput-boolean v0, p0, Lcom/gyf/immersionbar/for;->catch:Z

    .line 13
    iput-boolean v0, p0, Lcom/gyf/immersionbar/for;->class:Z

    .line 14
    iput-boolean v0, p0, Lcom/gyf/immersionbar/for;->const:Z

    .line 15
    iput-boolean v0, p0, Lcom/gyf/immersionbar/for;->final:Z

    .line 16
    iput v2, p0, Lcom/gyf/immersionbar/for;->super:F

    .line 17
    iput v2, p0, Lcom/gyf/immersionbar/for;->throw:F

    const/4 v3, 0x1

    .line 18
    iput-boolean v3, p0, Lcom/gyf/immersionbar/for;->while:Z

    .line 19
    iput v1, p0, Lcom/gyf/immersionbar/for;->import:I

    .line 20
    iput v1, p0, Lcom/gyf/immersionbar/for;->native:I

    .line 21
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/gyf/immersionbar/for;->public:Ljava/util/Map;

    .line 22
    iput v2, p0, Lcom/gyf/immersionbar/for;->return:F

    .line 23
    iput v0, p0, Lcom/gyf/immersionbar/for;->static:I

    .line 24
    iput v1, p0, Lcom/gyf/immersionbar/for;->switch:I

    .line 25
    iput v2, p0, Lcom/gyf/immersionbar/for;->throws:F

    .line 26
    iput-boolean v0, p0, Lcom/gyf/immersionbar/for;->default:Z

    .line 27
    iput-boolean v3, p0, Lcom/gyf/immersionbar/for;->package:Z

    .line 28
    iput-boolean v0, p0, Lcom/gyf/immersionbar/for;->continue:Z

    .line 29
    iput-boolean v0, p0, Lcom/gyf/immersionbar/for;->strictfp:Z

    const/16 v0, 0x12

    .line 30
    iput v0, p0, Lcom/gyf/immersionbar/for;->volatile:I

    .line 31
    iput-boolean v3, p0, Lcom/gyf/immersionbar/for;->interface:Z

    .line 32
    iput-boolean v3, p0, Lcom/gyf/immersionbar/for;->protected:Z

    .line 33
    iput-boolean v3, p0, Lcom/gyf/immersionbar/for;->transient:Z

    .line 34
    iput-boolean v3, p0, Lcom/gyf/immersionbar/for;->implements:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gyf/immersionbar/for;->do()Lcom/gyf/immersionbar/for;

    move-result-object v0

    return-object v0
.end method

.method public do()Lcom/gyf/immersionbar/for;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gyf/immersionbar/for;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
