.class final Lcom/google/zxing/oned/rss/if;
.super Landroid/support/v4/pw;
.source "SourceFile"


# instance fields
.field private final for:Landroid/support/v4/cc0;

.field private new:I


# direct methods
.method public constructor <init>(IILandroid/support/v4/cc0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/pw;-><init>(II)V

    .line 2
    iput-object p3, p0, Lcom/google/zxing/oned/rss/if;->for:Landroid/support/v4/cc0;

    return-void
.end method


# virtual methods
.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/if;->new:I

    return v0
.end method

.method public new()Landroid/support/v4/cc0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/rss/if;->for:Landroid/support/v4/cc0;

    return-object v0
.end method

.method public try()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/oned/rss/if;->new:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/oned/rss/if;->new:I

    return-void
.end method
