package org.chromium.base;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import org.chromium.base.annotations.CalledByNative;

/* loaded from: classes3.dex */
public class UnguessableToken implements Parcelable {
    public static final Parcelable.Creator<UnguessableToken> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final long f33141do;

    /* renamed from: if, reason: not valid java name */
    private final long f33142if;

    /* renamed from: org.chromium.base.UnguessableToken$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<UnguessableToken> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public UnguessableToken createFromParcel(Parcel parcel) {
            long j = parcel.readLong();
            long j2 = parcel.readLong();
            if (j == 0 || j2 == 0) {
                return null;
            }
            return new UnguessableToken(j, j2, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public UnguessableToken[] newArray(int i) {
            return new UnguessableToken[i];
        }
    }

    public /* synthetic */ UnguessableToken(long j, long j2, Cdo cdo) {
        this(j, j2);
    }

    @CalledByNative
    private static UnguessableToken create(long j, long j2) {
        return new UnguessableToken(j, j2);
    }

    @CalledByNative
    private UnguessableToken parcelAndUnparcelForTesting() {
        Parcel parcelObtain = Parcel.obtain();
        writeToParcel(parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        UnguessableToken unguessableTokenCreateFromParcel = CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return unguessableTokenCreateFromParcel;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UnguessableToken unguessableToken = (UnguessableToken) obj;
        return unguessableToken.f33141do == this.f33141do && unguessableToken.f33142if == this.f33142if;
    }

    @CalledByNative
    public long getHighForSerialization() {
        return this.f33141do;
    }

    @CalledByNative
    public long getLowForSerialization() {
        return this.f33142if;
    }

    public int hashCode() {
        long j = this.f33142if;
        long j2 = this.f33141do;
        return (((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f33141do);
        parcel.writeLong(this.f33142if);
    }

    private UnguessableToken(long j, long j2) {
        this.f33141do = j;
        this.f33142if = j2;
    }
}
